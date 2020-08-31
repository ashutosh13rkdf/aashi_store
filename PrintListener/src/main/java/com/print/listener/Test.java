package com.print.listener;

import java.awt.print.PrinterException;
import java.awt.print.PrinterJob;
import java.io.IOException;
import java.net.URL;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.printing.PDFPageable;

public class Test {

	public static void main(String[] args) throws IOException {
		printJob("https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf");

	}
	private static void printJob(String filePath) throws IOException {
		
	      URL url = new URL(filePath);
	      PDDocument pdf = PDDocument.load(url.openStream());
	      PrinterJob job = PrinterJob.getPrinterJob();
	      job.setPageable(new PDFPageable(pdf));
	      try {
			job.print();
		} catch (PrinterException e) {
			System.out.println("Exception in job.print() : "+e.getMessage());
		}
	     
}
}
