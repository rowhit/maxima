;;; Compiled by f2cl version 2.0 beta Date: 2004/11/09 18:37:12 
;;; 
;;; Options: ((:prune-labels nil) (:auto-save t) (:relaxed-array-decls t)
;;;           (:coerce-assigns :as-needed) (:array-type ':simple-array)
;;;           (:array-slicing nil) (:declare-common nil)
;;;           (:float-format double-float))

(in-package "SLATEC")


(let ((tth 0.6666666666666666)
      (c1 0.6149266274460007)
      (c2 0.4482883573538264)
      (coef 0.5773502691896257)
      (pi$ 3.141592653589793)
      (coner 1.0)
      (conei 0.0))
  (declare (type double-float conei coner pi$ coef c2 c1 tth))
  (defun zbiry (zr zi id kode bir bii ierr)
    (declare (type f2cl-lib:integer4 ierr kode id)
     (type double-float bii bir zi zr))
    (prog ((cyr (make-array 2 :element-type 'double-float))
           (cyi (make-array 2 :element-type 'double-float)) (k 0) (k1 0) (k2 0)
           (nz 0) (aa 0.0) (ad 0.0) (ak 0.0) (alim 0.0) (atrm 0.0) (az 0.0)
           (az3 0.0) (bb 0.0) (bk 0.0) (cc 0.0) (ck 0.0) (csqi 0.0) (csqr 0.0)
           (dig 0.0) (dk 0.0) (d1 0.0) (d2 0.0) (eaa 0.0) (elim 0.0) (fid 0.0)
           (fmr 0.0) (fnu 0.0) (fnul 0.0) (rl 0.0) (r1m5 0.0) (sfac 0.0)
           (sti 0.0) (str 0.0) (s1i 0.0) (s1r 0.0) (s2i 0.0) (s2r 0.0)
           (tol 0.0) (trm1i 0.0) (trm1r 0.0) (trm2i 0.0) (trm2r 0.0) (ztai 0.0)
           (ztar 0.0) (z3i 0.0) (z3r 0.0) (abs$ 0.0f0))
      (declare (type single-float abs$)
       (type (simple-array double-float (2)) cyr cyi)
       (type double-float z3r z3i ztar ztai trm2r trm2i trm1r trm1i tol s2r s2i
        s1r s1i str sti sfac r1m5 rl fnul fnu fmr fid elim eaa d2 d1 dk dig
        csqr csqi ck cc bk bb az3 az atrm alim ak ad aa)
       (type f2cl-lib:integer4 nz k2 k1 k))
      (setf ierr 0)
      (setf nz 0)
      (if (or (< id 0) (> id 1)) (setf ierr 1))
      (if (or (< kode 1) (> kode 2)) (setf ierr 1))
      (if (/= ierr 0) (go end_label))
      (setf az (zabs zr zi))
      (setf tol (max (f2cl-lib:d1mach 4) 1.0e-18))
      (setf fid (coerce (the f2cl-lib:integer4 id) 'double-float))
      (if (> az 1.0f0) (go label70))
      (setf s1r coner)
      (setf s1i conei)
      (setf s2r coner)
      (setf s2i conei)
      (if (< az tol) (go label130))
      (setf aa (* az az))
      (if (< aa (/ tol az)) (go label40))
      (setf trm1r coner)
      (setf trm1i conei)
      (setf trm2r coner)
      (setf trm2i conei)
      (setf atrm 1.0)
      (setf str (- (* zr zr) (* zi zi)))
      (setf sti (+ (* zr zi) (* zi zr)))
      (setf z3r (- (* str zr) (* sti zi)))
      (setf z3i (+ (* str zi) (* sti zr)))
      (setf az3 (* az aa))
      (setf ak (+ 2.0 fid))
      (setf bk (- 3.0 fid fid))
      (setf ck (- 4.0 fid))
      (setf dk (+ 3.0 fid fid))
      (setf d1 (* ak dk))
      (setf d2 (* bk ck))
      (setf ad (min d1 d2))
      (setf ak (+ 24.0 (* 9.0 fid)))
      (setf bk (- 30.0 (* 9.0 fid)))
      (f2cl-lib:fdo (k 1 (f2cl-lib:int-add k 1))
                    ((> k 25) nil)
        (tagbody
          (setf str (/ (- (* trm1r z3r) (* trm1i z3i)) d1))
          (setf trm1i (/ (+ (* trm1r z3i) (* trm1i z3r)) d1))
          (setf trm1r str)
          (setf s1r (+ s1r trm1r))
          (setf s1i (+ s1i trm1i))
          (setf str (/ (- (* trm2r z3r) (* trm2i z3i)) d2))
          (setf trm2i (/ (+ (* trm2r z3i) (* trm2i z3r)) d2))
          (setf trm2r str)
          (setf s2r (+ s2r trm2r))
          (setf s2i (+ s2i trm2i))
          (setf atrm (/ (* atrm az3) ad))
          (setf d1 (+ d1 ak))
          (setf d2 (+ d2 bk))
          (setf ad (min d1 d2))
          (if (< atrm (* tol ad)) (go label40))
          (setf ak (+ ak 18.0))
          (setf bk (+ bk 18.0))
         label30))
     label40
      (if (= id 1) (go label50))
      (setf bir (+ (* c1 s1r) (* c2 (- (* zr s2r) (* zi s2i)))))
      (setf bii (+ (* c1 s1i) (* c2 (+ (* zr s2i) (* zi s2r)))))
      (if (= kode 1) (go end_label))
      (multiple-value-bind (var-0 var-1 var-2 var-3)
          (zsqrt zr zi str sti)
        (declare (ignore var-0 var-1))
        (setf str var-2)
        (setf sti var-3))
      (setf ztar (* tth (- (* zr str) (* zi sti))))
      (setf ztai (* tth (+ (* zr sti) (* zi str))))
      (setf aa ztar)
      (setf aa (coerce (- (abs aa)) 'double-float))
      (setf eaa (exp aa))
      (setf bir (* bir eaa))
      (setf bii (* bii eaa))
      (go end_label)
     label50
      (setf bir (* s2r c2))
      (setf bii (* s2i c2))
      (if (<= az tol) (go label60))
      (setf cc (/ c1 (+ 1.0 fid)))
      (setf str (- (* s1r zr) (* s1i zi)))
      (setf sti (+ (* s1r zi) (* s1i zr)))
      (setf bir (+ bir (* cc (- (* str zr) (* sti zi)))))
      (setf bii (+ bii (* cc (+ (* str zi) (* sti zr)))))
     label60
      (if (= kode 1) (go end_label))
      (multiple-value-bind (var-0 var-1 var-2 var-3)
          (zsqrt zr zi str sti)
        (declare (ignore var-0 var-1))
        (setf str var-2)
        (setf sti var-3))
      (setf ztar (* tth (- (* zr str) (* zi sti))))
      (setf ztai (* tth (+ (* zr sti) (* zi str))))
      (setf aa ztar)
      (setf aa (coerce (- (abs aa)) 'double-float))
      (setf eaa (exp aa))
      (setf bir (* bir eaa))
      (setf bii (* bii eaa))
      (go end_label)
     label70
      (setf fnu (/ (+ 1.0 fid) 3.0))
      (setf k1 (f2cl-lib:i1mach 15))
      (setf k2 (f2cl-lib:i1mach 16))
      (setf r1m5 (f2cl-lib:d1mach 5))
      (setf k (f2cl-lib:int (min (abs k1) (abs k2))))
      (setf elim (* 2.303 (- (* k r1m5) 3.0)))
      (setf k1 (f2cl-lib:int-sub (f2cl-lib:i1mach 14) 1))
      (setf aa (* r1m5 k1))
      (setf dig (min aa 18.0))
      (setf aa (* aa 2.303))
      (setf alim (+ elim (max (- aa) -41.45)))
      (setf rl (+ (* 1.2 dig) 3.0))
      (setf fnul (+ 10.0 (* 6.0 (- dig 3.0))))
      (setf aa (/ 0.5 tol))
      (setf bb (* (f2cl-lib:i1mach 9) 0.5))
      (setf aa (min aa bb))
      (setf aa (expt aa tth))
      (if (> az aa) (go label260))
      (setf aa (f2cl-lib:fsqrt aa))
      (if (> az aa) (setf ierr 3))
      (multiple-value-bind (var-0 var-1 var-2 var-3)
          (zsqrt zr zi csqr csqi)
        (declare (ignore var-0 var-1))
        (setf csqr var-2)
        (setf csqi var-3))
      (setf ztar (* tth (- (* zr csqr) (* zi csqi))))
      (setf ztai (* tth (+ (* zr csqi) (* zi csqr))))
      (setf sfac 1.0)
      (setf ak ztai)
      (if (>= zr 0.0) (go label80))
      (setf bk ztar)
      (setf ck (coerce (- (abs bk)) 'double-float))
      (setf ztar ck)
      (setf ztai ak)
     label80
      (if (or (/= zi 0.0) (> zr 0.0)) (go label90))
      (setf ztar 0.0)
      (setf ztai ak)
     label90
      (setf aa ztar)
      (if (= kode 2) (go label100))
      (setf bb (coerce (abs aa) 'double-float))
      (if (< bb alim) (go label100))
      (setf bb (+ bb (* 0.25 (f2cl-lib:flog az))))
      (setf sfac tol)
      (if (> bb elim) (go label190))
     label100
      (setf fmr 0.0)
      (if (and (>= aa 0.0) (> zr 0.0)) (go label110))
      (setf fmr pi$)
      (if (< zi 0.0) (setf fmr (- pi$)))
      (setf ztar (- ztar))
      (setf ztai (- ztai))
     label110
      (multiple-value-bind
            (var-0 var-1 var-2 var-3 var-4 var-5 var-6 var-7 var-8 var-9 var-10
             var-11 var-12)
          (zbinu ztar ztai fnu kode 1 cyr cyi nz rl fnul tol elim alim)
        (declare
         (ignore var-0 var-1 var-2 var-3 var-4 var-5 var-6 var-8 var-9 var-10
          var-11 var-12))
        (setf nz var-7))
      (if (< nz 0) (go label200))
      (setf aa (* fmr fnu))
      (setf z3r sfac)
      (setf str (cos aa))
      (setf sti (sin aa))
      (setf s1r
              (*
               (- (* str (f2cl-lib:fref cyr (1) ((1 2))))
                  (* sti (f2cl-lib:fref cyi (1) ((1 2)))))
               z3r))
      (setf s1i
              (*
               (+ (* str (f2cl-lib:fref cyi (1) ((1 2))))
                  (* sti (f2cl-lib:fref cyr (1) ((1 2)))))
               z3r))
      (setf fnu (/ (- 2.0 fid) 3.0))
      (multiple-value-bind
            (var-0 var-1 var-2 var-3 var-4 var-5 var-6 var-7 var-8 var-9 var-10
             var-11 var-12)
          (zbinu ztar ztai fnu kode 2 cyr cyi nz rl fnul tol elim alim)
        (declare
         (ignore var-0 var-1 var-2 var-3 var-4 var-5 var-6 var-8 var-9 var-10
          var-11 var-12))
        (setf nz var-7))
      (f2cl-lib:fset (f2cl-lib:fref cyr (1) ((1 2)))
                     (* (f2cl-lib:fref cyr (1) ((1 2))) z3r))
      (f2cl-lib:fset (f2cl-lib:fref cyi (1) ((1 2)))
                     (* (f2cl-lib:fref cyi (1) ((1 2))) z3r))
      (f2cl-lib:fset (f2cl-lib:fref cyr (2) ((1 2)))
                     (* (f2cl-lib:fref cyr (2) ((1 2))) z3r))
      (f2cl-lib:fset (f2cl-lib:fref cyi (2) ((1 2)))
                     (* (f2cl-lib:fref cyi (2) ((1 2))) z3r))
      (multiple-value-bind (var-0 var-1 var-2 var-3 var-4 var-5)
          (zdiv (f2cl-lib:fref cyr (1) ((1 2))) (f2cl-lib:fref cyi (1) ((1 2)))
           ztar ztai str sti)
        (declare (ignore var-0 var-1 var-2 var-3))
        (setf str var-4)
        (setf sti var-5))
      (setf s2r (+ (* (+ fnu fnu) str) (f2cl-lib:fref cyr (2) ((1 2)))))
      (setf s2i (+ (* (+ fnu fnu) sti) (f2cl-lib:fref cyi (2) ((1 2)))))
      (setf aa (* fmr (- fnu 1.0)))
      (setf str (cos aa))
      (setf sti (sin aa))
      (setf s1r (* coef (- (+ s1r (* s2r str)) (* s2i sti))))
      (setf s1i (* coef (+ s1i (* s2r sti) (* s2i str))))
      (if (= id 1) (go label120))
      (setf str (- (* csqr s1r) (* csqi s1i)))
      (setf s1i (+ (* csqr s1i) (* csqi s1r)))
      (setf s1r str)
      (setf bir (/ s1r sfac))
      (setf bii (/ s1i sfac))
      (go end_label)
     label120
      (setf str (- (* zr s1r) (* zi s1i)))
      (setf s1i (+ (* zr s1i) (* zi s1r)))
      (setf s1r str)
      (setf bir (/ s1r sfac))
      (setf bii (/ s1i sfac))
      (go end_label)
     label130
      (setf aa (+ (* c1 (- 1.0 fid)) (* fid c2)))
      (setf bir aa)
      (setf bii 0.0)
      (go end_label)
     label190
      (setf ierr 2)
      (setf nz 0)
      (go end_label)
     label200
      (if (= nz -1) (go label190))
      (setf nz 0)
      (setf ierr 5)
      (go end_label)
     label260
      (setf ierr 4)
      (setf nz 0)
      (go end_label)
     end_label
      (return (values nil nil nil nil bir bii ierr)))))

