(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1_fresh () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun s1 () String)
(assert (! 
 (let (($x21 (= result "")))
 (let (($x22 (= $x21 true)))
 (let (($x156 (= s2 result)))
 (let (($x157 (= $x156 true)))
 (let ((?x153 (str.len s2)))
 (let (($x154 (= ?x153 length)))
 (let ((?x1028 (str.len s1_fresh)))
 (let (($x1219 (= ?x1028 offset)))
 (let (($x1220 (and $x1219 $x154)))
 (let (($x1221 (and $x1220 $x157)))
 (let ((?x1025 (str.++ s1_fresh s2)))
 (let ((?x1026 (str.++ ?x1025 s3)))
 (let (($x1027 (= ?x1026 s)))
 (let (($x1222 (and $x1027 $x1221)))
 (let (($x150 (> length 0)))
 (let ((?x147 (str.len s)))
 (let (($x148 (< offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x149 (and $x146 $x148)))
 (let (($x151 (and $x149 $x150)))
 (ite $x151 $x1222 $x22))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x128 (str.len s1)))
 (let ((?x1056 (str.substr s1 0 ?x128)))
 (= ?x1056 s1_fresh))) :named a2))
(assert (! 
 (let ((?x143 (str.substr s offset length)))
 (let (($x144 (= ?x143 result)))
 (not $x144))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s1_fresh = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;s1 = NO VALUE

;unsat core: a0 a1 

;actual status: sat
;(error "line 44 column 10: check annotation that says unsat")
