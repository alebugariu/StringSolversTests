(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset_fresh () Int)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun tmp_str5 () String)
(declare-fun offset () Int)
(assert (! 
 (let (($x21 (= result "")))
 (let (($x22 (= $x21 true)))
 (let (($x156 (= s2 result)))
 (let (($x157 (= $x156 true)))
 (let (($x1191 (and (and (= (str.len s1) offset_fresh) (= (str.len s2) length)) $x157)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (let (($x127 (= ?x126 s)))
 (let (($x150 (> length 0)))
 (let (($x1188 (and (and (>= offset_fresh 0) (< offset_fresh (str.len s))) $x150)))
 (ite $x1188 (and $x127 $x1191) $x22))))))))))) :named a1))
(assert (! 
 (and (= (str.indexof tmp_str5 "" offset) offset_fresh) (and (>= offset 0) (<= offset (str.len tmp_str5)))) :named a2))
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
;offset_fresh = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;tmp_str5 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
