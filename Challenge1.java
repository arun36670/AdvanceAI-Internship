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
		
		System.out.println(difference(list, k, n));

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
		System.out.println(Arrays.toString(list));
		int[] equals= new int [x];
		for(int i=0;i<n;i++) {
			int count = 0;
			if(list[i]==k) {
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
		System.out.println(Arrays.toString(list));
		return list[n - 1] - list[0];
		
	}

}
