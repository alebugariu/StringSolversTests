(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "a" (- 1) 0) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 1)
;*** Aborted at 1566142547 (unix time) try "date -d @1566142547" if you are using GNU date ***
;PC: @     0x7f10f3f1c428 gsignal
;*** SIGABRT (@0x3e800000877) received by PID 2167 (TID 0x7f10f54cc740) from PID 2167; stack trace: ***
;    @     0x7f10f3f1c4b0 (unknown)
;    @     0x7f10f3f1c428 gsignal
;    @     0x7f10f3f1e02a abort
;    @     0x7f10f455684d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f10f45546b6 (unknown)
;    @     0x7f10f4554701 std::terminate()
;    @     0x7f10f4554919 __cxa_throw
;    @     0x7f10f457d3f7 std::__throw_out_of_range_fmt()
;    @     0x7f10f45e8cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f10f4e00f69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f10f4ec6c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f10f4dc59ad Vlab::SMT::Visitor::visit()
;    @     0x7f10f4e007e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f10f4e132ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f10f4ec3310 Vlab::SMT::SubString::accept()
;    @     0x7f10f4dc59ad Vlab::SMT::Visitor::visit()
;    @     0x7f10f4e1932e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f10f4e084ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f10f4ebf450 Vlab::SMT::Eq::accept()
;    @     0x7f10f4dc59ad Vlab::SMT::Visitor::visit()
;    @     0x7f10f4e1932e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f10f4e02388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f10f4ebdb5c Vlab::SMT::And::accept()
;    @     0x7f10f4dc59ad Vlab::SMT::Visitor::visit()
;    @     0x7f10f4e1932e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f10f4e020e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f10f4ebbd2a Vlab::SMT::Assert::accept()
;    @     0x7f10f4dc59ad Vlab::SMT::Visitor::visit()
;    @     0x7f10f4eca699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f10f4ebb067 Vlab::SMT::Script::visit_children()
;    @     0x7f10f4dc59e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f10f4e020a9 Vlab::Solver::SyntacticOptimizer::visitScript()
