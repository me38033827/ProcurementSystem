;(function ($, window, document, undefined) {

	/*global jQuery, console*/

	'use strict';

	var pluginName = 'treeview';

	var _default = {};

	_default.settings = {

		injectStyle: true,

		levels: 4,

		expandIcon: 'glyphicon glyphicon-chevron-right',
		collapseIcon: 'glyphicon glyphicon-chevron-down',
		
		onhoverColor: '#F5F5F5',

		showBorder: true,
		
	};

	var Tree = function (element, options) {

		this.$element = $(element);
		this.elementId = element.id;
		this.styleId = this.elementId + '-style';

		this.init(options);

		return {
			// Options (public access)
			options: this.options,

			// Initialize / destroy methods
			init: $.proxy(this.init, this),
		};
	};

	Tree.prototype.init = function (options) {
		
		this.tree = [];
		this.nodes = [];
		
		if (options.data) {
			if (typeof options.data === 'string') {
				options.data = $.parseJSON(options.data);
			}
			this.tree = $.extend(true, [], options.data);
			delete options.data;
		}
		
		//给option添加style
		this.options = $.extend({}, _default.settings, options);
		
		this.subscribeEvents();
		this.setInitialStates({ nodes: this.tree }, 0);
		this.render();
	};

	Tree.prototype.unsubscribeEvents = function () {

		this.$element.off('click');
		
	};

	Tree.prototype.subscribeEvents = function () {

		this.unsubscribeEvents();

		//this.$element.on('click', $.proxy(this.clickHandler, this));
		this.$element.on('click', this.clickHandler);

	};

	/*
		Recurse the tree structure and ensure all nodes have
		valid initial states.  User defined states will be preserved.
		For performance we also take this opportunity to
		index nodes in a flattened structure
	*/
	Tree.prototype.setInitialStates = function (node, level) {

		if (!node.nodes) return;
		level += 1;

		var parent = node;
		var _this = this;
		$.each(node.nodes, function setState(index, node) {

			node.nodeId = _this.nodes.length;

			node.parentId = parent.nodeId;

			node.state = node.state || {};

			// set expanded state; if not provided based on levels
			if (!node.state.hasOwnProperty('expanded')) {
				if ((level < _this.options.levels) &&
						(node.nodes && node.nodes.length > 0)) {
					node.state.expanded = true;
				}
				else {
					node.state.expanded = false;
				}
			}
			
			// set show state
			if (!node.state.hasOwnProperty('show')) {
				if (level <= _this.options.levels) {
					node.state.show = true;
				}
				else {
					node.state.show = false;
				}
			}

			// index nodes in a flattened structure for use later
			_this.nodes.push(node);

			// recurse child nodes and transverse the tree
			if (node.nodes) {
				_this.setInitialStates(node, level);
			}
		});
	};

	Tree.prototype.clickHandler = function (event) {
		//if (!this.options.enableLinks) event.preventDefault();

		var target = $(event.target);
		
		var classList = target.attr("class")?target.attr('class').split(' '):[];

		if ((classList.indexOf('expand-icon') !== -1)) {
			var node = this.findNode(target);
			
			//console.log(node.state.expanded);
			if(!node.state.expanded){
				this.expand(node);
			}else if(node.state.expanded){
				this.collapse(node);
			}
		}
	};

	// Looks up the DOM for the closest parent list item to retrieve the
	// data attribute nodeid, which is used to lookup the node in the flattened structure.
	Tree.prototype.findNode = function (target) {

		var nodeId = target.closest('li.list-group-item').attr('data-nodeid');
		var node = this.nodes[nodeId];

		if (!node) {
			console.log('Error: node does not exist');
		}
		return node;
	};
	
	// expand a node
	Tree.prototype.expand = function(node){
		if(node.nodes){
			node.state.expanded = true;
			var nodeId = node.nodeId;
			$('*[data-nodeid=' + nodeId + ']').find('span.icon').removeClass(this.options.expandIcon);
			$('*[data-nodeid=' + nodeId + ']').find('span.icon').addClass(this.options.collapseIcon);
			
			for(var i = 0; i < node.nodes.length; i++){
				var id = node.nodes[i].nodeId;
				$('*[data-nodeid='+id+']').attr('style','');
			}
		}
	}
	
	//collapse a node
	Tree.prototype.collapse = function(node){
		if(node.nodes){
			node.state.expanded = false;
			var nodeId = node.nodeId;
			$('*[data-nodeid=' + nodeId + ']').find('span.icon').removeClass(this.options.collapseIcon);
			$('*[data-nodeid=' + nodeId + ']').find('span.icon').addClass(this.options.expandIcon);
			
			for(var i = 0; i < node.nodes.length; i++){
				var id = node.nodes[i].nodeId;
				$('*[data-nodeid='+id+']').attr('style','display:none');
				this.collapse(node.nodes[i]);
			}
		}
	}

	Tree.prototype.render = function () {

		if (!this.initialized) {

			// Setup first time only components
			
			this.$element.addClass(pluginName);
			this.$wrapper = $(this.template.list);
			
			this.injectStyle();

			this.initialized = true;
		}

		this.$element.empty().append(this.$wrapper.empty());
		
		// Build tree
		this.buildTree(this.tree, 0);
	};

	// Starting from the root node, and recursing down the
	// structure we build the tree one node at a time
	Tree.prototype.buildTree = function (nodes, level) {

		if (!nodes) return;
		level += 1;

		var _this = this;
		
		$.each(nodes, function addNodes(id, node) {
			
			var treeItem = $(_this.template.item)
				.addClass('node-' + _this.elementId)
				.attr('data-nodeid', node.nodeId);
			
			// Add indent/spacer to mimic tree structure
			for (var i = 0; i < (level - 1); i++) {
				treeItem.append(_this.template.indent);
			}
			
			// Add expand, collapse or empty spacer icons
			var classList = [];
			if (node.nodes) {
				classList.push('expand-icon');
				if (node.state.expanded) {
					classList.push(_this.options.collapseIcon);
				}
				else {
					classList.push(_this.options.expandIcon);
				}
			}
			else {
				classList.push(_this.options.emptyIcon);
			}

			treeItem
				.append($(_this.template.icon)
					.addClass(classList.join(' '))
				);

			// Add text
			if (_this.options.enableLinks) {
				// Add hyperlink
				treeItem
					.append($(_this.template.link)
						.attr('href', node.href)
						.append(node.text)
					);
			}
			else {
				// otherwise just text
				treeItem
					.append(node.text);
			}

			// Add item to the tree
			_this.$wrapper.append(treeItem);

			if(!node.state.show){
				treeItem.attr('style',"display:none");
			}
			
			
			// Recursively add child nodes
			if (node.nodes && node.state.expanded) {
				return _this.buildTree(node.nodes, level);
			}
			
			
			else if(node.nodes && (!node.state.expanded)){
				return _this.buildTree(node.nodes, level);
			}
			
		});
	};

	// Add inline style into head
	Tree.prototype.injectStyle = function () {

		if (this.options.injectStyle && !document.getElementById(this.styleId)) {
			$('<style type="text/css" id="' + this.styleId + '"> ' + this.buildStyle() + ' </style>').appendTo('head');
		}
	};

	// Construct trees style based on user options
	Tree.prototype.buildStyle = function () {

		var style = '.node-' + this.elementId + '{';

		if (this.options.color) {
			style += 'color:' + this.options.color + ';';
		}

		if (this.options.backColor) {
			style += 'background-color:' + this.options.backColor + ';';
		}

		if (!this.options.showBorder) {
			style += 'border:none;';
		}
		else if (this.options.borderColor) {
			style += 'border:1px solid ' + this.options.borderColor + ';';
		}
		style += '}';

		if (this.options.onhoverColor) {
			style += '.node-' + this.elementId + ':not(.node-disabled):hover{' +
				'background-color:' + this.options.onhoverColor + ';' +
			'}';
		}

		return this.css + style;
	};

	Tree.prototype.template = {
		list: '<ul class="list-group"></ul>',
		item: '<li class="list-group-item"></li>',
		indent: '<span class="indent"></span>',
		icon: '<span class="icon"></span>',
		link: '<a href="#" style="color:inherit;"></a>',
		badge: '<span class="badge"></span>'
	};

	Tree.prototype.css = '.treeview .list-group-item{cursor:pointer}.treeview span.indent{margin-left:10px;margin-right:10px}.treeview span.icon{width:12px;margin-right:5px}.treeview .node-disabled{color:silver;cursor:not-allowed}'

	// Prevent against multiple instantiations,
	// handle updates and method calls
	$.fn[pluginName] = function (options, args) {

		var result;

		this.each(function () {
			var _this = $.data(this, pluginName);
			if (typeof options === 'string') {
				if (!_this) {
					logError('Not initialized, can not call method : ' + options);
				}
				else if (!$.isFunction(_this[options]) || options.charAt(0) === '_') {
					logError('No such method : ' + options);
				}
				else {
					if (!(args instanceof Array)) {
						args = [ args ];
					}
					result = _this[options].apply(_this, args);
				}
			}
			else if (typeof options === 'boolean') {
				result = _this;
			}
			else {
				$.data(this, pluginName, new Tree(this, $.extend(true, {}, options)));
			}
		});

		return result || this;
	};

})(jQuery, window, document);
