(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "2" (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142577 (unix time) try "date -d @1566142577" if you are using GNU date ***
;PC: @     0x7f4739cfb428 gsignal
;*** SIGABRT (@0x3e800000a63) received by PID 2659 (TID 0x7f473b2ab740) from PID 2659; stack trace: ***
;    @     0x7f4739cfb4b0 (unknown)
;    @     0x7f4739cfb428 gsignal
;    @     0x7f4739cfd02a abort
;    @     0x7f473a33584d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f473a3336b6 (unknown)
;    @     0x7f473a333701 std::terminate()
;    @     0x7f473a333919 __cxa_throw
;    @     0x7f473a35c2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f473ac8fc40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7f473aca5c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f473aba49ad Vlab::SMT::Visitor::visit()
;    @     0x7f473aca1f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7f473aba49e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f473ac906a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f473ac8da2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7f473aca1ee6 Vlab::SMT::CharAt::accept()
;    @     0x7f473aba49ad Vlab::SMT::Visitor::visit()
;    @     0x7f473ac9e47b Vlab::SMT::Eq::visit_children()
;    @     0x7f473aba49e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f473ac906a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f473ac8977b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f473ac9e450 Vlab::SMT::Eq::accept()
;    @     0x7f473aba49ad Vlab::SMT::Visitor::visit()
;    @     0x7f473ac90a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f473ac878c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f473ac9cb5c Vlab::SMT::And::accept()
;    @     0x7f473aba49ad Vlab::SMT::Visitor::visit()
;    @     0x7f473ac90a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f473ac86d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f473ac9ad2a Vlab::SMT::Assert::accept()
