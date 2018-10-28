using System;
using System.IO;

namespace Sudoku1
{
	/// <summary>
	/// Summary description for Class1.
	/// </summary>
	public class Sprendimas
	{
		public Sprendimas()
		{
			
		}

		public int[,] isorinis = new int[10,10];
		public int[,,] vidinis = new int[10,10,10];
		public int[] rasti = new int[10];

		public int converse (char s)
		{
			if (s=='0'){return 0;}
			if (s=='1'){return 1;}
			if (s=='2'){return 2;}
			if (s=='3'){return 3;}
			if (s=='4'){return 4;}
			if (s=='5'){return 5;}
			if (s=='6'){return 6;}
			if (s=='7'){return 7;}
			if (s=='8'){return 8;}
			if (s=='9'){return 9;}
			return 0;
		}

		public string converse2 (int s)
		{
			if (s==0){return "0";}
			if (s==1){return "1";}
			if (s==2){return "2";}
			if (s==3){return "3";}
			if (s==4){return "4";}
			if (s==5){return "5";}
			if (s==6){return "6";}
			if (s==7){return "7";}
			if (s==8){return "8";}
			if (s==9){return "9";}
			return "a";
		}

		public string Spresti()
		{
			inicializuotiVidini();
			//braukyti galimybes
			for (int sk=1;sk<=9;sk++)
			{
				for (int x=1;x<=9;x++)
				{
					for (int y=1;y<=9;y++)
					{
						if (isorinis[x,y]==sk)
						{
							valytiVidiniMasyva(x,y,sk);
						}
					}
				}
			}
			
			for (int a=1;a<=30;a++)
			{
				taisykle1();
				taisykle2();
			}
			if (ieskotiLaisvuLangeliu()==0)
			{
				return "Sudoku issprestas!!!";
			} 
			else {return "Sudoku isspresti nepavyko.";}

		}

		public int checkArea(int x, int y)
		{
			if ((x==1 || x==2 || x==3) && (y==1 || y==2 || y==3)) 
			{
				return 1;
			}
			if ((x==4 || x==5 || x==6) && (y==1 || y==2 || y==3)) 
			{
				return 2;
			}
			if ((x==7 || x==8 || x==9) && (y==1 || y==2 || y==3)) 
			{
				return 3;
			}
			if ((x==1 || x==2 || x==3) && (y==4 || y==5 || y==6)) 
			{
				return 4;
			}
			if ((x==4 || x==5 || x==6) && (y==4 || y==5 || y==6)) 
			{
				return 5;
			}
			if ((x==7 || x==8 || x==9) && (y==4 || y==5 || y==6)) 
			{
				return 6;
			}
			if ((x==1 || x==2 || x==3) && (y==7 || y==8 || y==9)) 
			{
				return 7;
			}
			if ((x==4 || x==5 || x==6) && (y==7 || y==8 || y==9)) 
			{
				return 8;
			}
			if ((x==7 || x==8 || x==9) && (y==7 || y==8 || y==9)) 
			{
				return 9;
			}
			return 0;
		}

		public void valytiVidiniMasyva(int x, int y, int sk){
        for (int i=1;i<=9;i++){
            vidinis[x,y,i]=0;
        }
        for (int xx=1;xx<=9;xx++){
            for (int yy=1;yy<=9;yy++){
                if (xx==x || yy==y){
                    vidinis[xx,yy,sk]=0;
                }
            }
        }
        if (checkArea(x, y)==1){
            for (int i=1;i<=3;i++){ //xxx
                for (int j=1;j<=3;j++){ //yyy
                    vidinis[i,j,sk]=0;
                }
            }
        }
        if (checkArea(x, y)==2){
            for (int i=4;i<=6;i++){ //xxx
                for (int j=1;j<=3;j++){ //yyy
                    vidinis[i,j,sk]=0;
                }
            }
        }
        if (checkArea(x, y)==3){
            for (int i=7;i<=9;i++){ //xxx
                for (int j=1;j<=3;j++){ //yyy
                    vidinis[i,j,sk]=0;
                }
            }
        }
        if (checkArea(x, y)==4){
            for (int i=1;i<=3;i++){ //xxx
                for (int j=4;j<=6;j++){ //yyy
                    vidinis[i,j,sk]=0;
                }
            }
        }
        if (checkArea(x, y)==5){
            for (int i=4;i<=6;i++){ //xxx
                for (int j=4;j<=6;j++){ //yyy
                    vidinis[i,j,sk]=0;
                }
            }
        }
        if (checkArea(x, y)==6){
            for (int i=7;i<=9;i++){ //xxx
                for (int j=4;j<=6;j++){ //yyy
                    vidinis[i,j,sk]=0;
                }
            }
        }
        if (checkArea(x, y)==7){
            for (int i=1;i<=3;i++){ //xxx
                for (int j=7;j<=9;j++){ //yyy
                    vidinis[i,j,sk]=0;
                }
            }
        }
        if (checkArea(x, y)==8){
            for (int i=4;i<=6;i++){ //xxx
                for (int j=7;j<=9;j++){ //yyy
                    vidinis[i,j,sk]=0;
                }
            }
        }
        if (checkArea(x, y)==9){
            for (int i=7;i<=9;i++){ //xxx
                for (int j=7;j<=9;j++){ //yyy
                    vidinis[i,j,sk]=0;
                }
            }
        }
    }
    
    public void inicializuotiVidini(){
        for (int x=1;x<=9;x++){
            for (int y=1;y<=9;y++){
                for (int z=1;z<=9;z++){
                    vidinis[x,y,z]=z;
                }
            }
        }
    }
    
    public int ieskotiLaisvuLangeliu(){
        int n=0;
        for (int x=1;x<=9;x++){
            for (int y=1;y<=9;y++){
                if (isorinis[x,y]==0){
                    n++;
                }
            }
        }
        return n;
    }
    
    
    public void taisykle1(){
        
        /////
        //jei kuriam nors kvadratelyje is 81 yra tik 1 galimybe likusi
        int countxx=0;
        for (int a=1;a<=9;a++){
            for (int b=1;b<=9;b++){
                for (int c=1;c<=9;c++){
                    if (vidinis[a,b,c]!=0){
                        countxx++;
                    }
                }
                if (countxx==1){
                    for (int c=1;c<=9;c++){
                        if (vidinis[a,b,c]!=0){
                            rodytiRadus(a, b, vidinis[a,b,c]);
                        }
                    }
                }
                countxx=0;
            }
        }
        
        /////
        
        int[] laikinas = new int[3];
        int count=0;
        for (int a=1;a<=9;a++){
            if (rasti[a]!=9){
            
            
            //1
            
            
            for (int x1=1;x1<=3;x1++){
                for (int y1=1;y1<=3;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count++;
                        laikinas[1]=x1;
                        laikinas[2]=y1;
                    }
                }
            }
            if (count==1){
                rodytiRadus(laikinas[1], laikinas[2], a);
            }
            count=0;
            
            
            //2
            
            
            for (int x1=4;x1<=6;x1++){
                for (int y1=1;y1<=3;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count++;
                        laikinas[1]=x1;
                        laikinas[2]=y1;
                    }
                }
            }
            if (count==1){
                rodytiRadus(laikinas[1], laikinas[2], a);
            }
            count=0;
            
            
            //3
            
            
            for (int x1=7;x1<=9;x1++){
                for (int y1=1;y1<=3;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count++;
                        laikinas[1]=x1;
                        laikinas[2]=y1;
                    }
                }
            }
            if (count==1){
                rodytiRadus(laikinas[1], laikinas[2], a);
            }
            count=0;
            
            
            //4
            
            
            for (int x1=1;x1<=3;x1++){
                for (int y1=4;y1<=6;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count++;
                        laikinas[1]=x1;
                        laikinas[2]=y1;
                    }
                }
            }
            if (count==1){
                rodytiRadus(laikinas[1], laikinas[2], a);
            }
            count=0;
            
            
            //5
            
            
            for (int x1=4;x1<=6;x1++){
                for (int y1=4;y1<=6;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count++;
                        laikinas[1]=x1;
                        laikinas[2]=y1;
                    }
                }
            }
            if (count==1){
                rodytiRadus(laikinas[1], laikinas[2], a);
            }
            count=0;
            
            
            //6
            
            
            for (int x1=7;x1<=9;x1++){
                for (int y1=4;y1<=6;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count++;
                        laikinas[1]=x1;
                        laikinas[2]=y1;
                    }
                }
            }
            if (count==1){
                rodytiRadus(laikinas[1], laikinas[2], a);
            }
            count=0;
            
            
            //7
            
            
            for (int x1=1;x1<=3;x1++){
                for (int y1=7;y1<=9;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count++;
                        laikinas[1]=x1;
                        laikinas[2]=y1;
                    }
                }
            }
            if (count==1){
                rodytiRadus(laikinas[1], laikinas[2], a);
            }
            count=0;
            
            
            //8
            
            
            for (int x1=4;x1<=6;x1++){
                for (int y1=7;y1<=9;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count++;
                        laikinas[1]=x1;
                        laikinas[2]=y1;
                    }
                }
            }
            if (count==1){
                rodytiRadus(laikinas[1], laikinas[2], a);
            }
            count=0;
            
            
            //9
            
            
            for (int x1=7;x1<=9;x1++){
                for (int y1=7;y1<=9;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count++;
                        laikinas[1]=x1;
                        laikinas[2]=y1;
                    }
                }
            }
            if (count==1){
                rodytiRadus(laikinas[1], laikinas[2], a);
            }
            count=0;
            
            
            }
            }
    }
    
    public void taisykle2(){
        int[,,] laikinas1 = new int[4,4,3];
        int[,,]  laikinas2 = new int[4,4,3];
        int[,,]  laikinas3 = new int[4,4,3];
        int[,,]  laikinas4 = new int[4,4,3];
        int[,,]  laikinas5 = new int[4,4,3];
        int[,,]  laikinas6 = new int[4,4,3];
        int count1=0;
        int count2=0;
        int count3=0;
        for (int a=1;a<=9;a++){
            if (rasti[a]!=9){
            
            
            //1
            
            
            for (int x1=1;x1<=3;x1++){
                for (int y1=1;y1<=3;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count1++;
                        if (count1<4){
                            laikinas1[1,count1,1]=x1;
                            laikinas1[1,count1,2]=y1;
                        }
                    }
                }
            }
            
            for (int x2=1;x2<=3;x2++){
                for (int y2=4;y2<=6;y2++){
                    if (vidinis[x2,y2,a]==a){
                       count2++;
                       if (count2<4){
                            laikinas1[2,count2,1]=x2;
                            laikinas1[2,count2,2]=y2;
                       }
                    }
                }
            }
            for (int x3=1;x3<=3;x3++){
                for (int y3=7;y3<=9;y3++){
                    if (vidinis[x3,y3,a]==a){
                       count3++;
                        if (count3<4){
                            laikinas1[3,count3,1]=x3;
                            laikinas1[3,count3,2]=y3;
                       }
                    }
                }
            }
            
            if (count1==2 || count1==3){
                if (laikinas1[1,1,1]==laikinas1[1,2,1] && count1==2 && laikinas1[1,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas1[1,1,1],d,a]=0;}
                } else if (laikinas1[1,1,1]==laikinas1[1,2,1] && laikinas1[1,2,1]==laikinas1[1,3,1] && count1==3 && laikinas1[1,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas1[1,1,1],d,a]=0;}
                }
                if (laikinas1[1,1,2]==laikinas1[1,2,2] && count1==2 && laikinas1[1,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas1[1,1,2],a]=0;}
                } else if (laikinas1[1,1,2]==laikinas1[1,2,2] && laikinas1[1,2,2]==laikinas1[1,3,2] && count1==3 && laikinas1[1,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas1[1,1,2],a]=0;}
                }
            }
            if (count2==2 || count2==3){
                if (laikinas1[2,1,1]==laikinas1[2,2,1] && count2==2 && laikinas1[2,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas1[2,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas1[2,1,1],d,a]=0;}
                } else if (laikinas1[2,1,1]==laikinas1[2,2,1] && laikinas1[2,2,1]==laikinas1[2,3,1] && count2==3 && laikinas1[2,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas1[2,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas1[2,1,1],d,a]=0;}
                }
                if (laikinas1[2,1,2]==laikinas1[2,2,2] && count2==2 && laikinas1[2,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas1[2,1,2],a]=0;}
                } else if (laikinas1[2,1,2]==laikinas1[2,2,2] && laikinas1[2,2,2]==laikinas1[2,3,2] && count2==3 && laikinas1[2,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas1[2,1,2],a]=0;}
                }
            }
            if (count3==2 || count3==3){
                if (laikinas1[3,1,1]==laikinas1[3,2,1] && count3==2 && laikinas1[3,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas1[3,1,1],d,a]=0;}
                } else if (laikinas1[3,1,1]==laikinas1[3,2,1] && laikinas1[3,2,1]==laikinas1[3,3,1] && count3==3 && laikinas1[3,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas1[3,1,1],d,a]=0;}
                }
                if (laikinas1[3,1,2]==laikinas1[3,2,2] && count3==2 && laikinas1[3,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas1[3,1,2],a]=0;}
                } else if (laikinas1[3,1,2]==laikinas1[3,2,2] && laikinas1[3,2,2]==laikinas1[3,3,2] && count3==3 && laikinas1[3,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas1[3,1,2],a]=0;}
                }
            }
            count1=0;
            count2=0;
            count3=0;
            
            
            //2
            
            
            for (int x1=4;x1<=6;x1++){
                for (int y1=1;y1<=3;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count1++;
                        if (count1<4){
                            laikinas2[1,count1,1]=x1;
                            laikinas2[1,count1,2]=y1;
                        }
                    }
                }
            }
            for (int x2=4;x2<=6;x2++){
                for (int y2=4;y2<=6;y2++){
                    if (vidinis[x2,y2,a]==a){
                        count2++;
                        if (count2<4){
                            laikinas2[2,count2,1]=x2;
                            laikinas2[2,count2,2]=y2;
                        }
                    }
                }
            }
            for (int x3=4;x3<=6;x3++){
                for (int y3=7;y3<=9;y3++){
                    if (vidinis[x3,y3,a]==a){
                        count3++;
                        if (count3<4){
                            laikinas2[3,count3,1]=x3;
                            laikinas2[3,count3,2]=y3;
                        }
                    }
                }
            }
            if (count1==2 || count1==3){
                if (laikinas2[1,1,1]==laikinas2[1,2,1] && count1==2 && laikinas2[1,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas2[1,1,1],d,a]=0;}
                } else if (laikinas2[1,1,1]==laikinas2[1,2,1] && laikinas2[1,2,1]==laikinas2[1,3,1] && count1==3 && laikinas2[1,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas2[1,1,1],d,a]=0;}
                }
                if (laikinas2[1,1,2]==laikinas2[1,2,2] && count1==2 && laikinas2[1,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas2[1,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas2[1,1,2],a]=0;}
                } else if (laikinas2[1,1,2]==laikinas2[1,2,2] && laikinas2[1,2,2]==laikinas2[1,3,2] && count1==3 && laikinas2[1,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas2[1,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas2[1,1,2],a]=0;}
                }
            }
            if (count2==2 || count2==3){
                if (laikinas2[2,1,1]==laikinas2[2,2,1] && count2==2 && laikinas2[2,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas2[2,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas2[2,1,1],d,a]=0;}
                } else if (laikinas2[2,1,1]==laikinas2[2,2,1] && laikinas2[2,2,1]==laikinas2[2,3,1] && count2==3 && laikinas2[2,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas2[2,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas2[2,1,1],d,a]=0;}
                }
                if (laikinas2[2,1,2]==laikinas2[2,2,2] && count2==2 && laikinas2[2,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas2[2,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas2[2,1,2],a]=0;}
                } else if (laikinas2[2,1,2]==laikinas2[2,2,2] && laikinas2[2,2,2]==laikinas2[2,3,2] && count2==3 && laikinas2[2,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas2[2,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas2[2,1,2],a]=0;}
                }
            }
            if (count3==2 || count3==3){
                if (laikinas2[3,1,1]==laikinas2[3,2,1] && count3==2 && laikinas2[3,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas2[3,1,1],d,a]=0;}
                } else if (laikinas2[3,1,1]==laikinas2[3,2,1] && laikinas2[3,2,1]==laikinas2[3,3,1] && count3==3 && laikinas2[3,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas2[3,1,1],d,a]=0;}
                }
                if (laikinas2[3,1,2]==laikinas2[3,2,2] && count3==2 && laikinas2[3,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas2[3,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas2[3,1,2],a]=0;}
                } else if (laikinas2[3,1,2]==laikinas2[3,2,2] && laikinas2[3,2,2]==laikinas2[3,3,2] && count3==3 && laikinas2[3,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas2[3,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas2[3,1,2],a]=0;}
                }
            }
            count1=0;
            count2=0;
            count3=0;
            
            
            //3
            
            
            for (int x1=7;x1<=9;x1++){
                for (int y1=1;y1<=3;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count1++;
                        if (count1<4){
                            laikinas3[1,count1,1]=x1;
                            laikinas3[1,count1,2]=y1;
                       }
                    }
                }
            }
            for (int x2=7;x2<=9;x2++){
                for (int y2=4;y2<=6;y2++){
                    if (vidinis[x2,y2,a]==a){
                        count2++;
                        if (count2<4){
                            laikinas3[2,count2,1]=x2;
                            laikinas3[2,count2,2]=y2;
                       }
                    }
                }
            }
            for (int x3=7;x3<=9;x3++){
                for (int y3=7;y3<=9;y3++){
                    if (vidinis[x3,y3,a]==a){
                        count3++;
                        if (count3<4){
                            laikinas3[3,count3,1]=x3;
                            laikinas3[3,count3,2]=y3;
                       }
                    }
                }
            }
            if (count1==2 || count1==3){
                if (laikinas3[1,1,1]==laikinas3[1,2,1] && count1==2 && laikinas3[1,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas3[1,1,1],d,a]=0;}
                } else if (laikinas3[1,1,1]==laikinas3[1,2,1] && laikinas3[1,2,1]==laikinas3[1,3,1] && count1==3 && laikinas3[1,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas3[1,1,1],d,a]=0;}
                }
                if (laikinas3[1,1,2]==laikinas3[1,2,2] && count1==2 && laikinas3[1,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas3[1,1,2],a]=0;}
                } else if (laikinas3[1,1,2]==laikinas3[1,2,2] && laikinas3[1,2,2]==laikinas3[1,3,2] && count1==3 && laikinas3[1,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas3[1,1,2],a]=0;}
                }
            }
            if (count2==2 || count2==3){
                if (laikinas3[2,1,1]==laikinas3[2,2,1] && count2==2 && laikinas3[2,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas3[2,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas3[2,1,1],d,a]=0;}
                } else if (laikinas3[2,1,1]==laikinas3[2,2,1] && laikinas3[2,2,1]==laikinas3[2,3,1] && count2==3 && laikinas3[2,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas3[2,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas3[2,1,1],d,a]=0;}
                }
                if (laikinas3[2,1,2]==laikinas3[2,2,2] && count2==2 && laikinas3[2,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas3[2,1,2],a]=0;}
                } else if (laikinas3[2,1,2]==laikinas3[2,2,2] && laikinas3[2,2,2]==laikinas3[2,3,2] && count2==3 && laikinas3[2,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas3[2,1,2],a]=0;}
                }
            }
            if (count3==2 || count3==3){
                if (laikinas3[3,1,1]==laikinas3[3,2,1] && count3==2 && laikinas3[3,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas3[3,1,1],d,a]=0;}
                } else if (laikinas3[3,1,1]==laikinas3[3,2,1] && laikinas3[3,2,1]==laikinas3[3,3,1] && count3==3 && laikinas3[3,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas3[3,1,1],d,a]=0;}
                }
                if (laikinas3[3,1,2]==laikinas3[3,2,2] && count3==2 && laikinas3[3,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas3[3,1,2],a]=0;}
                } else if (laikinas3[3,1,2]==laikinas3[3,2,2] && laikinas3[3,2,2]==laikinas3[3,3,2] && count3==3 && laikinas3[3,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas3[3,1,2],a]=0;}
                }
            }
            count1=0;
            count2=0;
            count3=0;
            
            
            //4
            
            
            for (int x1=1;x1<=3;x1++){
                for (int y1=1;y1<=3;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count1++;
                        if (count1<4){
                            laikinas4[1,count1,1]=x1;
                            laikinas4[1,count1,2]=y1;
                       }
                    }
                }
            }
            for (int x2=4;x2<=6;x2++){
                for (int y2=1;y2<=3;y2++){
                    if (vidinis[x2,y2,a]==a){
                        count2++;
                        if (count2<4){
                            laikinas4[2,count2,1]=x2;
                            laikinas4[2,count2,2]=y2;
                       }
                    }
                }
            }
            for (int x3=7;x3<=9;x3++){
                for (int y3=1;y3<=3;y3++){
                    if (vidinis[x3,y3,a]==a){
                        count3++;
                        if (count3<4){
                            laikinas4[3,count3,1]=x3;
                            laikinas4[3,count3,2]=y3;
                       }
                    }
                }
            }
            if (count1==2 || count1==3){
                if (laikinas4[1,1,1]==laikinas4[1,2,1] && count1==2 && laikinas4[1,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas4[1,1,1],d,a]=0;}
                } else if (laikinas4[1,1,1]==laikinas4[1,2,1] && laikinas4[1,2,1]==laikinas4[1,3,1] && count1==3 && laikinas4[1,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas4[1,1,1],d,a]=0;}
                }
                if (laikinas4[1,1,2]==laikinas4[1,2,2] && count1==2&& laikinas4[1,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas4[1,1,2],a]=0;}
                } else if (laikinas4[1,1,2]==laikinas4[1,2,2] && laikinas4[1,2,2]==laikinas4[1,3,2] && count1==3 && laikinas4[1,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas4[1,1,2],a]=0;}
                }
            }
            if (count2==2 || count2==3){
                if (laikinas4[2,1,1]==laikinas4[2,2,1] && count2==2 && laikinas4[2,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas4[2,1,1],d,a]=0;}
                } else if (laikinas4[2,1,1]==laikinas4[2,2,1] && laikinas4[2,2,1]==laikinas4[2,3,1] && count2==3 && laikinas4[2,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas4[2,1,1],d,a]=0;}
                }
                if (laikinas4[2,1,2]==laikinas4[2,2,2] && count2==2 && laikinas4[2,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas4[2,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas4[2,1,2],a]=0;}
                } else if (laikinas4[2,1,2]==laikinas4[2,2,2] && laikinas4[2,2,2]==laikinas4[2,3,2] && count2==3 && laikinas4[2,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas4[2,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas4[2,1,2],a]=0;}
                }
            }
            if (count3==2 || count3==3){
                if (laikinas4[3,1,1]==laikinas4[3,2,1] && count3==2 && laikinas4[3,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas4[3,1,1],d,a]=0;}
                } else if (laikinas4[3,1,1]==laikinas4[3,2,1] && laikinas4[3,2,1]==laikinas4[3,3,1] && count3==3 && laikinas4[3,1,1]!=0){
                    for (int d=4;d<=9;d++){vidinis[laikinas4[3,1,1],d,a]=0;}
                }
                if (laikinas4[3,1,2]==laikinas4[3,2,2] && count3==2 && laikinas4[3,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas4[3,1,2],a]=0;}
                } else if (laikinas4[3,1,2]==laikinas4[3,2,2] && laikinas4[3,2,2]==laikinas4[3,3,2] && count3==3 && laikinas4[3,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas4[3,1,2],a]=0;}
                }
            }
            count1=0;
            count2=0;
            count3=0;
            
            
            //5
            
            
            for (int x1=1;x1<=3;x1++){
                for (int y1=4;y1<=6;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count1++;
                        if (count1<4){
                            laikinas5[1,count1,1]=x1;
                            laikinas5[1,count1,2]=y1;
                       }
                    }
                }
            }
            for (int x2=4;x2<=6;x2++){
                for (int y2=4;y2<=6;y2++){
                    if (vidinis[x2,y2,a]==a){
                        count2++;
                        if (count2<4){
                            laikinas5[2,count2,1]=x2;
                            laikinas5[2,count2,2]=y2;
                       }
                    }
                }
            }
            for (int x3=7;x3<=9;x3++){
                for (int y3=4;y3<=6;y3++){
                    if (vidinis[x3,y3,a]==a){
                        count3++;
                        if (count3<4){
                            laikinas5[3,count3,1]=x3;
                            laikinas5[3,count3,2]=y3;
                       }
                    }
                }
            }
            if (count1==2 || count1==3){
                if (laikinas5[1,1,1]==laikinas5[1,2,1] && count1==2 && laikinas5[1,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas5[1,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas5[1,1,1],d,a]=0;}
                } else if (laikinas5[1,1,1]==laikinas5[1,2,1] && laikinas5[1,2,1]==laikinas5[1,3,1] && count1==3 && laikinas5[1,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas5[1,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas5[1,1,1],d,a]=0;}
                }
                if (laikinas5[1,1,2]==laikinas5[1,2,2] && count1==2 && laikinas5[1,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas5[1,1,2],a]=0;}
                } else if (laikinas5[1,1,2]==laikinas5[1,2,2] && laikinas5[1,2,2]==laikinas5[1,3,2] && count1==3 && laikinas5[1,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas5[1,1,2],a]=0;}
                }
            }
            if (count2==2 || count2==3){
                if (laikinas5[2,1,1]==laikinas5[2,2,1] && count2==2 && laikinas5[2,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas5[2,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas5[2,1,1],d,a]=0;}
                } else if (laikinas5[2,1,1]==laikinas5[2,2,1] && laikinas5[2,2,1]==laikinas5[2,3,1] && count2==3 && laikinas5[2,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas5[2,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas5[2,1,1],d,a]=0;}
                }
                if (laikinas5[2,1,2]==laikinas5[2,2,2] && count2==2 && laikinas5[2,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas5[2,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas5[2,1,2],a]=0;}
                } else if (laikinas5[2,1,2]==laikinas5[2,2,2] && laikinas5[2,2,2]==laikinas5[2,3,2] && count2==3 && laikinas5[2,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas5[2,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas5[2,1,2],a]=0;}
                }
            }
            if (count3==2 || count3==3){
                if (laikinas5[3,1,1]==laikinas5[3,2,1] && count3==2 && laikinas5[3,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas5[3,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas5[3,1,1],d,a]=0;}
                } else if (laikinas5[3,1,1]==laikinas5[3,2,1] && laikinas5[3,2,1]==laikinas5[3,3,1] && count3==3 && laikinas5[3,1,1]!=0){
                    for (int d=1;d<=3;d++){vidinis[laikinas5[3,1,1],d,a]=0;}
                    for (int d=7;d<=9;d++){vidinis[laikinas5[3,1,1],d,a]=0;}
                }
                if (laikinas5[3,1,2]==laikinas5[3,2,2] && count3==2 && laikinas5[3,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas5[3,1,2],a]=0;}
                } else if (laikinas5[3,1,2]==laikinas5[3,2,2] && laikinas5[3,2,2]==laikinas5[3,3,2] && count3==3 && laikinas5[3,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas5[3,1,2],a]=0;}
                }
            }
            count1=0;
            count2=0;
            count3=0;
            
            
            //6
            
            
            for (int x1=1;x1<=3;x1++){
                for (int y1=7;y1<=9;y1++){
                    if (vidinis[x1,y1,a]==a){
                        count1++;
                        if (count1<4){
                            laikinas6[1,count1,1]=x1;
                            laikinas6[1,count1,2]=y1;
                       }
                    }
                }
            }
            for (int x2=4;x2<=6;x2++){
                for (int y2=7;y2<=9;y2++){
                    if (vidinis[x2,y2,a]==a){
                        count2++;
                        if (count2<4){
                            laikinas6[2,count2,1]=x2;
                            laikinas6[2,count2,2]=y2;
                       }
                    }
                }
            }
            for (int x3=7;x3<=9;x3++){
                for (int y3=7;y3<=9;y3++){
                    if (vidinis[x3,y3,a]==a){
                        count3++;
                        if (count3<4){
                            laikinas6[3,count3,1]=x3;
                            laikinas6[3,count3,2]=y3;
                       }
                    }
                }
            }
            if (count1==2 || count1==3){
                if (laikinas6[1,1,1]==laikinas6[1,2,1] && count1==2 && laikinas6[1,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas6[1,1,1],d,a]=0;}
                } else if (laikinas6[1,1,1]==laikinas6[1,2,1] && laikinas6[1,2,1]==laikinas6[1,3,1] && count1==3 && laikinas6[1,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas6[1,1,1],d,a]=0;}
                }
                if (laikinas6[1,1,2]==laikinas6[1,2,2] && count1==2 && laikinas6[1,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas6[1,1,2],a]=0;}
                } else if (laikinas6[1,1,2]==laikinas6[1,2,2] && laikinas6[1,2,2]==laikinas6[1,3,2] && count1==3 && laikinas6[1,1,2]!=0){
                    for (int d=4;d<=9;d++){vidinis[d,laikinas6[1,1,2],a]=0;}
                }
            }
            if (count2==2 || count2==3){
                if (laikinas6[2,1,1]==laikinas6[2,2,1] && count2==2 && laikinas6[2,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas6[2,1,1],d,a]=0;}
                } else if (laikinas6[2,1,1]==laikinas6[2,2,1] && laikinas6[2,2,1]==laikinas6[2,3,1] && count2==3 && laikinas6[2,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas6[2,1,1],d,a]=0;}
                }
                if (laikinas6[2,1,2]==laikinas6[2,2,2] && count2==2 && laikinas6[2,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas6[2,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas6[2,1,2],a]=0;}
                } else if (laikinas6[2,1,2]==laikinas6[2,2,2] && laikinas6[2,2,2]==laikinas6[2,3,2] && count2==3 && laikinas6[2,1,2]!=0){
                    for (int d=1;d<=3;d++){vidinis[d,laikinas6[2,1,2],a]=0;}
                    for (int d=7;d<=9;d++){vidinis[d,laikinas6[2,1,2],a]=0;}
                }
            }
            if (count3==2 || count3==3){
                if (laikinas6[3,1,1]==laikinas6[3,2,1] && count3==2 && laikinas6[3,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas6[3,1,1],d,a]=0;}
                } else if (laikinas6[3,1,1]==laikinas6[3,2,1] && laikinas6[3,2,1]==laikinas6[3,3,1] && count3==3 && laikinas6[3,1,1]!=0){
                    for (int d=1;d<=6;d++){vidinis[laikinas6[3,1,1],d,a]=0;}
                }
                if (laikinas6[3,1,2]==laikinas6[3,2,2] && count3==2 && laikinas6[3,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas6[3,1,2],a]=0;}
                } else if (laikinas6[3,1,2]==laikinas6[3,2,2] && laikinas6[3,2,2]==laikinas6[3,3,2] && count3==3 && laikinas6[3,1,2]!=0){
                    for (int d=1;d<=6;d++){vidinis[d,laikinas6[3,1,2],a]=0;}
                }
            }
            count1=0;
            count2=0;
            count3=0;
        }
        }
    }
    
    public void rodytiRadus(int x, int y, int sk){
        isorinis[x,y]=sk;
        rasti[sk]++;
        valytiVidiniMasyva(x, y, sk);
    }

		public void isFailo(StreamReader s)
		{
			char[] buf = new char[11];
			
			for (int i=1;i<=9;i++)
			{
				
				s.Read(buf,0,11);

				for (int j=1;j<=9;j++)
				{
					isorinis[i,j]=converse(buf[j-1]);;
				}
				
			}
		}

	}
}
