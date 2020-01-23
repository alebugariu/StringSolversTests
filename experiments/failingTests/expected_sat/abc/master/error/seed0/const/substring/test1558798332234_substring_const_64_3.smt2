(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "2" (- 1) 0) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 1)
;*** Aborted at 1566142545 (unix time) try "date -d @1566142545" if you are using GNU date ***
;PC: @     0x7f2f36cfa428 gsignal
;*** SIGABRT (@0x3e800000868) received by PID 2152 (TID 0x7f2f382aa740) from PID 2152; stack trace: ***
;    @     0x7f2f36cfa4b0 (unknown)
;    @     0x7f2f36cfa428 gsignal
;    @     0x7f2f36cfc02a abort
;    @     0x7f2f3733484d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f2f373326b6 (unknown)
;    @     0x7f2f37332701 std::terminate()
;    @     0x7f2f37332919 __cxa_throw
;    @     0x7f2f3735b3f7 std::__throw_out_of_range_fmt()
;    @     0x7f2f373c6cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f2f37bdef69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f2f37ca4c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f2f37ba39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2f37bde7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f2f37bf12ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f2f37ca1310 Vlab::SMT::SubString::accept()
;    @     0x7f2f37ba39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2f37bf732e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f2f37be64ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f2f37c9d450 Vlab::SMT::Eq::accept()
;    @     0x7f2f37ba39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2f37bf732e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f2f37be0388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f2f37c9bb5c Vlab::SMT::And::accept()
;    @     0x7f2f37ba39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2f37bf732e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f2f37be00e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f2f37c99d2a Vlab::SMT::Assert::accept()
;    @     0x7f2f37ba39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2f37ca8699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2f37c99067 Vlab::SMT::Script::visit_children()
;    @     0x7f2f37ba39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2f37be00a9 Vlab::Solver::SyntacticOptimizer::visitScript()
