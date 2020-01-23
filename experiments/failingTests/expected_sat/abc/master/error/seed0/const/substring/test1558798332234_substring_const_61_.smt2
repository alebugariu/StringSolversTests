(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "0" 2 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 2) > this->size() (which is 1)
;*** Aborted at 1566142548 (unix time) try "date -d @1566142548" if you are using GNU date ***
;PC: @     0x7f44ee9eb428 gsignal
;*** SIGABRT (@0x3e80000087d) received by PID 2173 (TID 0x7f44eff9b740) from PID 2173; stack trace: ***
;    @     0x7f44ee9eb4b0 (unknown)
;    @     0x7f44ee9eb428 gsignal
;    @     0x7f44ee9ed02a abort
;    @     0x7f44ef02584d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f44ef0236b6 (unknown)
;    @     0x7f44ef023701 std::terminate()
;    @     0x7f44ef023919 __cxa_throw
;    @     0x7f44ef04c3f7 std::__throw_out_of_range_fmt()
;    @     0x7f44ef0b7cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f44ef8cff69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f44ef995c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f44ef8949ad Vlab::SMT::Visitor::visit()
;    @     0x7f44ef8cf7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f44ef8e22ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f44ef992310 Vlab::SMT::SubString::accept()
;    @     0x7f44ef8949ad Vlab::SMT::Visitor::visit()
;    @     0x7f44ef8e832e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f44ef8d74ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f44ef98e450 Vlab::SMT::Eq::accept()
;    @     0x7f44ef8949ad Vlab::SMT::Visitor::visit()
;    @     0x7f44ef8e832e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f44ef8d1388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f44ef98cb5c Vlab::SMT::And::accept()
;    @     0x7f44ef8949ad Vlab::SMT::Visitor::visit()
;    @     0x7f44ef8e832e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f44ef8d10e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f44ef98ad2a Vlab::SMT::Assert::accept()
;    @     0x7f44ef8949ad Vlab::SMT::Visitor::visit()
;    @     0x7f44ef999699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f44ef98a067 Vlab::SMT::Script::visit_children()
;    @     0x7f44ef8949e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f44ef8d10a9 Vlab::Solver::SyntacticOptimizer::visitScript()
