--Vector
vadd::(Float,Float,Float,Float,Float,Float) -> (Float,Float,Float) 
vadd (a,b,c,x,y,z) = (q,w,e) where
    q = a + x
    w = b + y
    e = c + z
    
vMinus::(Float,Float,Float,Float,Float,Float) -> (Float,Float,Float)  
vMinus (a,b,c,x,y,z) = (q,w,e) where
     q = a - (x)
     w = b - (y)
     e = c - (z)
     
vIlSk::(Float,Float,Float,Float,Float,Float) -> (Float)  
vIlSk (a,b,c,x,y,z) = (q) where
     q = ((a*x) + (b*y) + (c*z))
     
vIl::(Float,Float,Float,Float,Float,Float) -> (Float,Float,Float)  
vIl (a,b,c,x,y,z) = (q,w,e) where
     q = (b*z) - (c*y)
     w = (-(a*z) + (c*x))
     e = ((a*y) -(b*x))
     
   
vDl::(Float,Float,Float) -> (Float)    
vDl (a,b,c) = (q) where
     q = sqrt (a*a + b*b + c*c)
     
vKat::(Float,Float,Float,Float,Float,Float) -> (Float)  
vKat (a,b,c,x,y,z) = (q) where
    q = vDl(a,b,c) * vDl(x,y,z)

-- matrix
madd::(Integer,Integer,Integer,Integer,Integer,Integer,Integer,Integer) -> (Integer,Integer,Integer,Integer)
madd (a11,a12,a21,a22,b11,b12,b21,b22) = (c11,c12,c21,c22) where
    c11 = a11 + b11
    c12 = a12 + b12
    c21 = a21 + b21
    c22 = a22 + b22
mminus::(Integer,Integer,Integer,Integer,Integer,Integer,Integer,Integer) -> (Integer,Integer,Integer,Integer)
mminus (a11,a12,a21,a22,b11,b12,b21,b22) = (c11,c12,c21,c22) where
    c11 = a11 - b11
    c12 = a12 - b12
    c21 = a21 - b21
    c22 = a22 - b22

mIl::(Integer,Integer,Integer,Integer,Integer,Integer,Integer,Integer) -> (Integer,Integer,Integer,Integer)
mIl (a11,a12,a21,a22,b11,b12,b21,b22) = (c11,c12,c21,c22) where
    c11 = a11*b11 + a12*b21
    c12 = a11*b21 + a12*b22
    c21 = a21*b11 + a22*b21
    c22 = a21*b21 + a22*b22
    
mW::(Integer,Integer,Integer,Integer) -> (Integer)
mW (a11,a12,a21,a22) = (c) where
    c = a11*a22 - a12*a21 
    
mS::(Integer,Integer,Integer,Integer) -> (Integer)
mS (a11,a12,a21,a22) = (c) where
    c = a11+a22     
    
mT::(Integer,Integer,Integer,Integer) -> (Integer,Integer,Integer,Integer)
mT (a11,a12,a21,a22) = (c11,c12,c21,c22) where
    c11 = a11
    c12 = a21
    c21 = a12
    c22 = a22
    

    
