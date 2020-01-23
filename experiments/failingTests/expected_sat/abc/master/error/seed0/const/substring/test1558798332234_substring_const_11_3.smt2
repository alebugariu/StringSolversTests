(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "\"a\"" (- 1) 2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 3)
;*** Aborted at 1566142546 (unix time) try "date -d @1566142546" if you are using GNU date ***
;PC: @     0x7f70775f2428 gsignal
;*** SIGABRT (@0x3e80000086d) received by PID 2157 (TID 0x7f7078ba2740) from PID 2157; stack trace: ***
;    @     0x7f70775f24b0 (unknown)
;    @     0x7f70775f2428 gsignal
;    @     0x7f70775f402a abort
;    @     0x7f7077c2c84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f7077c2a6b6 (unknown)
;    @     0x7f7077c2a701 std::terminate()
;    @     0x7f7077c2a919 __cxa_throw
;    @     0x7f7077c533f7 std::__throw_out_of_range_fmt()
;    @     0x7f7077cbecf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f70784d6f69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f707859cc34 Vlab::SMT::TermConstant::accept()
;    @     0x7f707849b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f70784d67e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f70784e92ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f7078599310 Vlab::SMT::SubString::accept()
;    @     0x7f707849b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f70784ef32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f70784de4ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f7078595450 Vlab::SMT::Eq::accept()
;    @     0x7f707849b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f70784ef32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f70784d8388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f7078593b5c Vlab::SMT::And::accept()
;    @     0x7f707849b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f70784ef32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f70784d80e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f7078591d2a Vlab::SMT::Assert::accept()
;    @     0x7f707849b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f70785a0699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7078591067 Vlab::SMT::Script::visit_children()
;    @     0x7f707849b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f70784d80a9 Vlab::Solver::SyntacticOptimizer::visitScript()
