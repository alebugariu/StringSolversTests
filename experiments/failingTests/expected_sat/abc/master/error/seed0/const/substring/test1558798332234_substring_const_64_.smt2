(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "2" (- 1) 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 1)
;*** Aborted at 1566142547 (unix time) try "date -d @1566142547" if you are using GNU date ***
;PC: @     0x7fa3f4c88428 gsignal
;*** SIGABRT (@0x3e80000087b) received by PID 2171 (TID 0x7fa3f6238740) from PID 2171; stack trace: ***
;    @     0x7fa3f4c884b0 (unknown)
;    @     0x7fa3f4c88428 gsignal
;    @     0x7fa3f4c8a02a abort
;    @     0x7fa3f52c284d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fa3f52c06b6 (unknown)
;    @     0x7fa3f52c0701 std::terminate()
;    @     0x7fa3f52c0919 __cxa_throw
;    @     0x7fa3f52e93f7 std::__throw_out_of_range_fmt()
;    @     0x7fa3f5354cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7fa3f5b6cf69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7fa3f5c32c34 Vlab::SMT::TermConstant::accept()
;    @     0x7fa3f5b319ad Vlab::SMT::Visitor::visit()
;    @     0x7fa3f5b6c7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7fa3f5b7f2ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fa3f5c2f310 Vlab::SMT::SubString::accept()
;    @     0x7fa3f5b319ad Vlab::SMT::Visitor::visit()
;    @     0x7fa3f5b8532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa3f5b744ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fa3f5c2b450 Vlab::SMT::Eq::accept()
;    @     0x7fa3f5b319ad Vlab::SMT::Visitor::visit()
;    @     0x7fa3f5b8532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa3f5b6e388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fa3f5c29b5c Vlab::SMT::And::accept()
;    @     0x7fa3f5b319ad Vlab::SMT::Visitor::visit()
;    @     0x7fa3f5b8532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa3f5b6e0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fa3f5c27d2a Vlab::SMT::Assert::accept()
;    @     0x7fa3f5b319ad Vlab::SMT::Visitor::visit()
;    @     0x7fa3f5c36699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa3f5c27067 Vlab::SMT::Script::visit_children()
;    @     0x7fa3f5b319e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa3f5b6e0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
