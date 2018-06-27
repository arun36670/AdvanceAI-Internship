import java.util.Scanner;

import java.util.Arrays;

import java.util.Random;

public class Challenge1 {

	public static void main(String[] args) {
		Scanner kb = new Scanner(System.in);
		int k;
		int n;

		System.out.println("What is the lenght of your array");
		n = kb.nextInt();
		System.out.println("What is your postiive integer");
		k = kb.nextInt();
		int[] list = createArray(n);

		System.out.println(Arrays.toString(list));
		
		
		if(difference(list, k, n) > differencem(list, k, n)) {
			System.out.println(differencem(list, k, n));
		}
		else {
			System.out.println(difference(list, k, n));
		}

	}

	public static int[] createArray(int n) {
		int[] list = new int[n];
		Random rand = new Random();

		for (int i = 0; i < n; i++) {
			list[i] = rand.nextInt(10) + 1;
		}
		Arrays.sort(list);
		return list;
	}
	
	public static int differencem(int[] list, int k, int n) {
		double sum = 0;
		for(int i = 0;i<n;i++) {
			sum += list[i];
		}
		double mean = sum/n;
		
		for (int i = 0;i<n;i++) {
			double plus = list[i]+k;
			plus = Math.abs(mean - plus);
			double minus = list[i]-k;
			minus = Math.abs(mean - minus);
			if(plus>minus) {
				list[i] -= k;
			}
			else {
				list[i] += k;
			}
		}
		
		
		Arrays.sort(list);
		return list[n-1]-list[0];
		
	}
	
	public static int difference(int[] list, int k, int n) {

		int x = 0;
		for (int i=0; i<n;i++) {
			if(list[i]>k) {
				list[i]-=k;
			}
			else if(list[i]<k) {
				list[i]+=k;
			}
			else if(list[i]==k) {
		     x++;
			}
			
		}
		Arrays.sort(list);
		int[] equals= new int [x];
		int count = 0;
		for(int i=0;i<n;i++) {
			if(list[i]==k && count!=x) {
				equals[count]=i;
				count++;

				
			}
		}
		
		int y = list[0];
		int z = 2*k-list[n-1];
		
		if(y>0&&z>0) {
			if(y>z) {
				for(int i=0; i<x; i++) {
					list[equals[i]]=2*k;
				}	
			}
			else {
				for(int i=0; i<x; i++) {
					list[equals[i]]=0;
				}
			}
		}
		else if(z<0){
			for(int i=0; i<x; i++) {
				list[equals[i]]=2*k;
			}
		}
		
		Arrays.sort(list);
		return list[n - 1] - list[0];
		
	}

}
