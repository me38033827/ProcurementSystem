package com.ProcurementSystem.common;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;

import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipFile;

public class FileUnZip {
	/**
	 * 解压zip文件
	 * 
	 * @param sourceFile,待解压的zip文件;
	 *            toFolder,解压后的存放路径
	 * @throws Exception
	 **/

	public static void zipToFile(String sourceFile, String toFolder) throws Exception {
		String toDisk = toFolder;// 接收解压后的存放路径
		ZipFile zfile = new ZipFile(sourceFile, "utf-8");// 连接待解压文件
		Enumeration zList = zfile.getEntries();// 得到zip包里的所有元素
		ZipEntry ze = null;
		byte[] buf = new byte[1024];
		while (zList.hasMoreElements()) {
			ze = (ZipEntry) zList.nextElement();
			if (ze.isDirectory()) {
				// log.info("打开zip文件里的文件夹:"+ ze.getName() +"skipped...");
				continue;
			}
			OutputStream outputStream = null;
			InputStream inputStream = null;
			try {
				// 以ZipEntry为参数得到一个InputStream，并写到OutputStream中
				outputStream = new BufferedOutputStream(new FileOutputStream(getRealFileName(toDisk, ze.getName())));
				inputStream = new BufferedInputStream(zfile.getInputStream(ze));
				int readLen = 0;
				while ((readLen = inputStream.read(buf, 0, 1024)) != -1) {
					outputStream.write(buf, 0, readLen);
				}
				inputStream.close();
				outputStream.close();
			} catch (Exception e) {
				// log.info("解压失败："+e.toString());
				throw new IOException("解压失败：" + e.toString());
			} finally {
				if (inputStream != null) {
					try {
						inputStream.close();
					} catch (IOException ex) {

					}
				}
				if (outputStream != null) {
					try {
						outputStream.close();
					} catch (IOException ex) {
						ex.printStackTrace();
					}
				}
				inputStream = null;
				outputStream = null;
			}

		}
		zfile.close();
	}

	/**
	 * 
	 * 给定根目录，返回一个相对路径所对应的实际文件名.
	 * 
	 * @param zippath
	 *            指定根目录
	 * 
	 * @param absFileName
	 *            相对路径名，来自于ZipEntry中的name
	 * 
	 * @return java.io.File 实际的文件
	 * 
	 */

	private static File getRealFileName(String zippath, String absFileName) {
		// log.info("文件名："+absFileName);
		String[] dirs = absFileName.split("/", absFileName.length());
		File ret = new File(zippath);// 创建文件对象
		if (dirs.length > 1) {
			for (int i = 0; i < dirs.length - 1; i++) {
				ret = new File(ret, dirs[i]);
			}
		}
		if (!ret.exists()) {// 检测文件是否存在
			ret.mkdirs();// 创建此抽象路径名指定的目录
		}
		ret = new File(ret, dirs[dirs.length - 1]);// 根据 ret 抽象路径名和 child
													// 路径名字符串创建一个新 File 实例
		return ret;
	}
}
