(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "-1" 2 (- 1)) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142546 (unix time) try "date -d @1566142546" if you are using GNU date ***
;PC: @     0x7efc0e48e428 gsignal
;*** SIGABRT (@0x3e800000871) received by PID 2161 (TID 0x7efc0fa3e740) from PID 2161; stack trace: ***
;    @     0x7efc0e48e4b0 (unknown)
;    @     0x7efc0e48e428 gsignal
;    @     0x7efc0e49002a abort
;    @     0x7efc0eac884d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7efc0eac66b6 (unknown)
;    @     0x7efc0eac6701 std::terminate()
;    @     0x7efc0eac6919 __cxa_throw
;    @     0x7efc0eaef2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7efc0f3857f5 Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7efc0f435310 Vlab::SMT::SubString::accept()
;    @     0x7efc0f3379ad Vlab::SMT::Visitor::visit()
;    @     0x7efc0f38b32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7efc0f37a4ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7efc0f431450 Vlab::SMT::Eq::accept()
;    @     0x7efc0f3379ad Vlab::SMT::Visitor::visit()
;    @     0x7efc0f38b32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7efc0f374388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7efc0f42fb5c Vlab::SMT::And::accept()
;    @     0x7efc0f3379ad Vlab::SMT::Visitor::visit()
;    @     0x7efc0f38b32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7efc0f3740e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7efc0f42dd2a Vlab::SMT::Assert::accept()
;    @     0x7efc0f3379ad Vlab::SMT::Visitor::visit()
;    @     0x7efc0f43c699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7efc0f42d067 Vlab::SMT::Script::visit_children()
;    @     0x7efc0f3379e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7efc0f3740a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7efc0f42d03c Vlab::SMT::Script::accept()
;    @     0x7efc0f3379ad Vlab::SMT::Visitor::visit()
;    @     0x7efc0f373ed5 Vlab::Solver::SyntacticOptimizer::start()
