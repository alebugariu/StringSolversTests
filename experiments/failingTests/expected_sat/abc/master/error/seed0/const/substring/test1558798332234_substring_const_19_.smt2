(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "a" (- 1) 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 1)
;*** Aborted at 1566142543 (unix time) try "date -d @1566142543" if you are using GNU date ***
;PC: @     0x7f0f60e0e428 gsignal
;*** SIGABRT (@0x3e800000855) received by PID 2133 (TID 0x7f0f623be740) from PID 2133; stack trace: ***
;    @     0x7f0f60e0e4b0 (unknown)
;    @     0x7f0f60e0e428 gsignal
;    @     0x7f0f60e1002a abort
;    @     0x7f0f6144884d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f0f614466b6 (unknown)
;    @     0x7f0f61446701 std::terminate()
;    @     0x7f0f61446919 __cxa_throw
;    @     0x7f0f6146f3f7 std::__throw_out_of_range_fmt()
;    @     0x7f0f614dacf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f0f61cf2f69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f0f61db8c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f0f61cb79ad Vlab::SMT::Visitor::visit()
;    @     0x7f0f61cf27e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f0f61d052ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f0f61db5310 Vlab::SMT::SubString::accept()
;    @     0x7f0f61cb79ad Vlab::SMT::Visitor::visit()
;    @     0x7f0f61d0b32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f0f61cfa4ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f0f61db1450 Vlab::SMT::Eq::accept()
;    @     0x7f0f61cb79ad Vlab::SMT::Visitor::visit()
;    @     0x7f0f61d0b32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f0f61cf4388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f0f61dafb5c Vlab::SMT::And::accept()
;    @     0x7f0f61cb79ad Vlab::SMT::Visitor::visit()
;    @     0x7f0f61d0b32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f0f61cf40e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f0f61dadd2a Vlab::SMT::Assert::accept()
;    @     0x7f0f61cb79ad Vlab::SMT::Visitor::visit()
;    @     0x7f0f61dbc699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0f61dad067 Vlab::SMT::Script::visit_children()
;    @     0x7f0f61cb79e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0f61cf40a9 Vlab::Solver::SyntacticOptimizer::visitScript()
