package com.mongle.visual;


public class menupage {
	

    public static void main(String[] args) {
        // Example data with different spacing for each column
        String[][] tableData = {
                {"1. 자산관리", "2. 송금  ", "3. 투자    "},
                {"4. 고객센터", "5. MyPage", "0. 로그하웃"}               
        };

        // Print the ASCII table with custom spacing
        printAsciiTable(tableData);
    }

    public static void printAsciiTable(String[][] data) {
        // Print header
        String header = "+-------------------------------------------+";
        //System.out.println(header);
       // System.out.println("| Name            | Age | City                 |");
        System.out.println(header);

        // Print data rows with custom spacing
        for (String[] row : data) {
            System.out.printf("| %-10s | %-1s | %-5s |\n", row[0], row[1], row[2]);
        }

        System.out.println(header);
    }
}
