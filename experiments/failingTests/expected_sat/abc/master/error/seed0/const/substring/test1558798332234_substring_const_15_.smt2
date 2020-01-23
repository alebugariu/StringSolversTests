(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "\"a\"" 2 (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142543 (unix time) try "date -d @1566142543" if you are using GNU date ***
;PC: @     0x7fe5922d7428 gsignal
;*** SIGABRT (@0x3e80000084c) received by PID 2124 (TID 0x7fe593887740) from PID 2124; stack trace: ***
;    @     0x7fe5922d74b0 (unknown)
;    @     0x7fe5922d7428 gsignal
;    @     0x7fe5922d902a abort
;    @     0x7fe59291184d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fe59290f6b6 (unknown)
;    @     0x7fe59290f701 std::terminate()
;    @     0x7fe59290f919 __cxa_throw
;    @     0x7fe5929382cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7fe5931ce7f5 Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fe59327e310 Vlab::SMT::SubString::accept()
;    @     0x7fe5931809ad Vlab::SMT::Visitor::visit()
;    @     0x7fe5931d432e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fe5931c34ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fe59327a450 Vlab::SMT::Eq::accept()
;    @     0x7fe5931809ad Vlab::SMT::Visitor::visit()
;    @     0x7fe5931d432e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fe5931bd388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fe593278b5c Vlab::SMT::And::accept()
;    @     0x7fe5931809ad Vlab::SMT::Visitor::visit()
;    @     0x7fe5931d432e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fe5931bd0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fe593276d2a Vlab::SMT::Assert::accept()
;    @     0x7fe5931809ad Vlab::SMT::Visitor::visit()
;    @     0x7fe593285699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fe593276067 Vlab::SMT::Script::visit_children()
;    @     0x7fe5931809e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fe5931bd0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7fe59327603c Vlab::SMT::Script::accept()
;    @     0x7fe5931809ad Vlab::SMT::Visitor::visit()
;    @     0x7fe5931bced5 Vlab::Solver::SyntacticOptimizer::start()
