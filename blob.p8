pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
-- short flash / contrast frame
-- fireball
-- smoke

-- billowing (fire and smoke)
-- going up
-- smoke dissipates
-- sparks

function _init()
 parts={}
 
 myblb={
  x=64,
  y=64,
  r=10
 }
 add(parts,myblb)
end

function _draw()
 cls(12)
 
 for p in all(parts) do
  blob(p)
 end
 
 print(myblb.r,64,110,1)
 
end

function _update60()
 if btnp(⬅️) then
  myblb.r-=1
 end
 if btnp(➡️) then
  myblb.r+=1
 end
end
-->8
function blob(p)
 local myr=flr(p.r)
 
 local thk={
  0,
  myr*0.05,
  myr*0.15,
  myr*0.3
 }
 local col={
  2,
  9,
  10,
  7
 }
 
 if myr<=5 then
  deli(thk,4)
  deli(col,2)
  
  deli(thk,2)
  deli(col,2)  
 elseif myr<=6 then  
  deli(thk,3)
  deli(col,2)  
 elseif myr<=8 then
  deli(thk,4)
  deli(col,2)
 end
 
 for i=1,#thk do
  circfill(p.x,p.y-thk[i],
           myr-thk[i],col[i])
 end
 
 
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
