(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "0" (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142579 (unix time) try "date -d @1566142579" if you are using GNU date ***
;PC: @     0x7effc0da7428 gsignal
;*** SIGABRT (@0x3e800000a89) received by PID 2697 (TID 0x7effc2357740) from PID 2697; stack trace: ***
;    @     0x7effc0da74b0 (unknown)
;    @     0x7effc0da7428 gsignal
;    @     0x7effc0da902a abort
;    @     0x7effc13e184d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7effc13df6b6 (unknown)
;    @     0x7effc13df701 std::terminate()
;    @     0x7effc13df919 __cxa_throw
;    @     0x7effc14082cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7effc1d3bc40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7effc1d51c34 Vlab::SMT::TermConstant::accept()
;    @     0x7effc1c509ad Vlab::SMT::Visitor::visit()
;    @     0x7effc1d4df28 Vlab::SMT::CharAt::visit_children()
;    @     0x7effc1c509e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7effc1d3c6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7effc1d39a2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7effc1d4dee6 Vlab::SMT::CharAt::accept()
;    @     0x7effc1c509ad Vlab::SMT::Visitor::visit()
;    @     0x7effc1d4a47b Vlab::SMT::Eq::visit_children()
;    @     0x7effc1c509e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7effc1d3c6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7effc1d3577b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7effc1d4a450 Vlab::SMT::Eq::accept()
;    @     0x7effc1c509ad Vlab::SMT::Visitor::visit()
;    @     0x7effc1d3ca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7effc1d338c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7effc1d48b5c Vlab::SMT::And::accept()
;    @     0x7effc1c509ad Vlab::SMT::Visitor::visit()
;    @     0x7effc1d3ca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7effc1d32d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7effc1d46d2a Vlab::SMT::Assert::accept()
