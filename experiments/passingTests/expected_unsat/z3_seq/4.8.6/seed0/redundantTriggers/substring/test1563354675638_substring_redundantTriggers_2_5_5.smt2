(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3_fresh () String)
(declare-fun tmp_str5 () String)
(declare-fun s3 () String)
(declare-fun tmp_str6 () String)
(assert (! 
 (let (($x21 (= result "")))
 (let (($x22 (= $x21 true)))
 (let (($x156 (= s2 result)))
 (let (($x157 (= $x156 true)))
 (let ((?x153 (str.len s2)))
 (let (($x154 (= ?x153 length)))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x155 (and $x152 $x154)))
 (let (($x158 (and $x155 $x157)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x1097 (str.++ ?x124 s3_fresh)))
 (let (($x1098 (= ?x1097 s)))
 (let (($x1234 (and $x1098 $x158)))
 (let (($x150 (> length 0)))
 (let ((?x147 (str.len s)))
 (let (($x148 (< offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x149 (and $x146 $x148)))
 (let (($x151 (and $x149 $x150)))
 (ite $x151 $x1234 $x22))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x1116 (str.indexof s3 tmp_str5 0)))
 (let (($x1117 (= ?x1116 (- 1))))
 (let ((?x1111 (str.replace s3 tmp_str5 tmp_str6)))
 (let (($x1112 (= ?x1111 s3_fresh)))
 (and $x1112 $x1117))))) :named a2))
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
;s1 = NO VALUE
;s2 = NO VALUE
;s3_fresh = NO VALUE
;s3 = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE

;unsat core: a0 a1 

;actual status: unsat
