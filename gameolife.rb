grid1 = Array.new(20){Array.new(20){"[ ]"}}
grid2 = Array.new(20){Array.new(20){"[ ]"}}
y = 0
x = 0
n=0

grid1[1][16]= "[O]"
grid1[1][17] = "[O]"
grid1[2][1]= "[O]"
grid1[2][2]= "[O]"
grid1[2][6]= "[O]"
grid1[2][15]= "[O]"
grid1[2][16]= "[O]"
grid1[3][2] = "[O]"
grid1[3][3] = "[O]"
grid1[3][4] = "[O]"
grid1[3][5] = "[O]"
grid1[3][16] = "[O]"
grid1[6][0]= "[O]"
grid1[7][0] = "[O]"
grid1[7][1] = "[O]"
grid1[7][10] = "[O]"
grid1[8][0]= "[O]"
grid1[8][1] = "[O]"
grid1[8][9]= "[O]"
grid1[8][10]= "[O]"
grid1[9][0]= "[O]"
grid1[9][1]= "[O]"
grid1[9][2]= "[O]"
grid1[9][3]= "[O]"
grid1[9][9]= "[O]"
grid1[9][11]= "[O]"
grid1[10][1]= "[O]"
grid1[10][2]= "[O]"
grid1[14][13] = "[O]"
grid1[14][14] = "[O]"
grid1[14][15] = "[O]"
grid1[15][2]= "[O]"
grid1[15][13]= "[O]"
grid1[16][3]= "[O]"
grid1[16][14]= "[O]"
grid1[17][0] = "[O]"
grid1[17][1] = "[O]"
grid1[17][4] = "[O]"
grid1[17][5] = "[O]"
grid1[17][6] = "[O]"

while(true)
(0...20).each do |y|
	(0...20).each do |x|
		print grid1[y][x]
	end
	puts 
end

(0...20).each do |y|
	(0...20).each do |x|
		if grid1[y][x] == "[O]"
			if x+1 < 20 && grid1[y][x+1]== "[O]" 
				n+=1
			end
			if x+1 < 20 && y+1 < 20 && grid1[y+1][x+1] == "[O]" 
				n+=1
			end
			if x+1 < 20 && y-1 >= 0 && grid1[y-1][x+1] == "[O]" 
				n+=1
			end
			if y+1 < 20 && grid1[y+1][x]== "[O]" 
				n+=1
			end
			if  y-1 >= 0 && grid1[y-1][x] == "[O]" 
				n+=1
			end
			if x-1 >= 0 && grid1[y][x-1] == "[O]" 
				n+=1
			end
			if y+1 < 20 && x-1 >= 0 && grid1[y+1][x-1] == "[O]" 
				n+=1
			end
			if y-1 >= 0 && x-1 >= 0 && grid1[y-1][x-1] == "[O]" 
				n+=1
			end
			if n==2 || n==3
				grid2[y][x] = "[O]"
			else
				grid2[y][x] = "[ ]"
			end
		
	
		elsif grid1[y][x] == "[ ]"
			if x+1 < 20 && grid1[y][x+1]== "[O]" 
				n+=1
			end
			if x+1 < 20 && y+1 < 20 && grid1[y+1][x+1] == "[O]" 
				n+=1
			end
			if x+1 < 20 && y-1 >= 0 && grid1[y-1][x+1] == "[O]" 
				n+=1
			end
			if y+1 < 20 && grid1[y+1][x]== "[O]" 
				n+=1
			end
			if  y-1 >= 0 && grid1[y-1][x] == "[O]" 
				n+=1
			end
			if x-1 >= 0 && grid1[y][x-1] == "[O]" 
				n+=1
			end
			if y+1 < 20 && x-1 >= 0 && grid1[y+1][x-1] == "[O]" 
				n+=1
			end
			if y-1 >= 0 && x-1 >= 0 && grid1[y-1][x-1] == "[O]" 
				n+=1
			end
			if n==3 
				grid2[y][x] = "[O]"
			else
				grid2[y][x] = "[ ]"
			end
		end
		n=0
	end
end
		grid1 = grid2

		sleep (0.25)
end
