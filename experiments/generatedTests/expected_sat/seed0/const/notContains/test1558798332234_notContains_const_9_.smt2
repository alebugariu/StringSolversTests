(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x711 (str.contains """a""" "-1")))
 (= $x711 false)))
(check-sat)

(get-info :reason-unknown)



