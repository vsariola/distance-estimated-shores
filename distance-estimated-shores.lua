s=math.sin
for i=0,16320*2 do
 j=i%48
 --{
 poke(16320+j,s(j/15)*255)
 x=-.22
 y=-.88
 z=.41
 j=0
 --}
 repeat
  --{
  X=x
  Y=y
  Z=z
  dr=1
  --}
  for i=0,50 do
   r=(X*X+Y*Y+Z*Z)^.5
   if r>2 then
    break
   end
   --{
   theta = 8*math.acos(Z/r)
   phi = 8*math.atan2(Y,X)
   --}
   --{
   dr = r^7*8*dr+1
   X=r^8*s(theta)*s(phi+8)+x
   Y=r^8*s(phi)*s(theta)+y
	  Z=r^8*s(theta+8)+z
			--}
  end
  m=math.log(r)/2*r/dr
  --{
  x=x+m*(i%240/120-1)
  y=y+m
  z=z+m*(1-i/16320)/2
  j=j+1
  --}
 until j>50 or .0001>m
 poke4(i,j^.5*3)
end
TIC=btn
-- <TILES>
-- 001:eccccccccc888888caaaaaaaca888888cacccccccacc0ccccacc0ccccacc0ccc
-- 002:ccccceee8888cceeaaaa0cee888a0ceeccca0ccc0cca0c0c0cca0c0c0cca0c0c
-- 003:eccccccccc888888caaaaaaaca888888cacccccccacccccccacc0ccccacc0ccc
-- 004:ccccceee8888cceeaaaa0cee888a0ceeccca0cccccca0c0c0cca0c0c0cca0c0c
-- 017:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 018:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- 019:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 020:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- </TILES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

