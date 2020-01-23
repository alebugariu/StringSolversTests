(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "2" 2 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 2) > this->size() (which is 1)
;*** Aborted at 1566142548 (unix time) try "date -d @1566142548" if you are using GNU date ***
;PC: @     0x7fd279b2d428 gsignal
;*** SIGABRT (@0x3e80000087f) received by PID 2175 (TID 0x7fd27b0dd740) from PID 2175; stack trace: ***
;    @     0x7fd279b2d4b0 (unknown)
;    @     0x7fd279b2d428 gsignal
;    @     0x7fd279b2f02a abort
;    @     0x7fd27a16784d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fd27a1656b6 (unknown)
;    @     0x7fd27a165701 std::terminate()
;    @     0x7fd27a165919 __cxa_throw
;    @     0x7fd27a18e3f7 std::__throw_out_of_range_fmt()
;    @     0x7fd27a1f9cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7fd27aa11f69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7fd27aad7c34 Vlab::SMT::TermConstant::accept()
;    @     0x7fd27a9d69ad Vlab::SMT::Visitor::visit()
;    @     0x7fd27aa117e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7fd27aa242ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fd27aad4310 Vlab::SMT::SubString::accept()
;    @     0x7fd27a9d69ad Vlab::SMT::Visitor::visit()
;    @     0x7fd27aa2a32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fd27aa194ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fd27aad0450 Vlab::SMT::Eq::accept()
;    @     0x7fd27a9d69ad Vlab::SMT::Visitor::visit()
;    @     0x7fd27aa2a32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fd27aa13388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fd27aaceb5c Vlab::SMT::And::accept()
;    @     0x7fd27a9d69ad Vlab::SMT::Visitor::visit()
;    @     0x7fd27aa2a32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fd27aa130e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fd27aaccd2a Vlab::SMT::Assert::accept()
;    @     0x7fd27a9d69ad Vlab::SMT::Visitor::visit()
;    @     0x7fd27aadb699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd27aacc067 Vlab::SMT::Script::visit_children()
;    @     0x7fd27a9d69e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd27aa130a9 Vlab::Solver::SyntacticOptimizer::visitScript()
