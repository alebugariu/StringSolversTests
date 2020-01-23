(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "-1" (- 1) 0) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 2)
;*** Aborted at 1566142547 (unix time) try "date -d @1566142547" if you are using GNU date ***
;PC: @     0x7f3ea5dc7428 gsignal
;*** SIGABRT (@0x3e800000875) received by PID 2165 (TID 0x7f3ea7377740) from PID 2165; stack trace: ***
;    @     0x7f3ea5dc74b0 (unknown)
;    @     0x7f3ea5dc7428 gsignal
;    @     0x7f3ea5dc902a abort
;    @     0x7f3ea640184d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f3ea63ff6b6 (unknown)
;    @     0x7f3ea63ff701 std::terminate()
;    @     0x7f3ea63ff919 __cxa_throw
;    @     0x7f3ea64283f7 std::__throw_out_of_range_fmt()
;    @     0x7f3ea6493cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f3ea6cabf69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f3ea6d71c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f3ea6c709ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ea6cab7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f3ea6cbe2ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f3ea6d6e310 Vlab::SMT::SubString::accept()
;    @     0x7f3ea6c709ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ea6cc432e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f3ea6cb34ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f3ea6d6a450 Vlab::SMT::Eq::accept()
;    @     0x7f3ea6c709ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ea6cc432e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f3ea6cad388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f3ea6d68b5c Vlab::SMT::And::accept()
;    @     0x7f3ea6c709ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ea6cc432e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f3ea6cad0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f3ea6d66d2a Vlab::SMT::Assert::accept()
;    @     0x7f3ea6c709ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ea6d75699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3ea6d66067 Vlab::SMT::Script::visit_children()
;    @     0x7f3ea6c709e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3ea6cad0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
