svg={}svg.__index=svg;function svg:create(a,b,c,d)local e={}setmetatable(e,svg)e.width=a or 100;e.height=height or 100;e.stroke=c or"#000000"e.fill=d or"transparent"e.elements={}e.Element={}e.Element.__index=svg.Element;function e.Element:create(f,g)local h={}setmetatable(h,e.Element)h.name=f;h.strElement="<"..f.." "for i,j in pairs(g)do h[i]=j;h.strElement=h.strElement..i.."=\""..j.."\" "end;h.strElement=h.strElement.."/>"return h end;return e end;function svg:add(k)table.insert(self.elements,k)end;function svg:draw()local l="<svg width=\""..self.width.."\" height=\""..self.height.."\" fill=\""..self.fill.."\" stroke=\""..self.stroke.."\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\">"for m,n in pairs(self.elements)do l=l..n.strElement end;l=l.."</svg>"return l end;function svg:Rect(o,p,a,height,c,q,d,r,s)return self.Element:create("rect",{x=o or 10,y=p or 10,width=a or 10,height=height or 10,stroke=c or self.stroke,fill=d or self.fill,["stroke-width"]=q or 1,rx=r or 0,ry=s or 0})end;function svg:Circle(t,u,v,c,q,d)return self.Element:create("circle",{r=t or 25,cx=u or 30,cy=v or 30,stroke=c or self.stroke,["stroke-width"]=q or 1,fill=d or self.fill})end

mon_dessin = svg:create()
mon_dessin:add(mon_dessin:Rect())
mon_dessin:add(mon_dessin:Circle())
print(mon_dessin:draw())