(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "-1" (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142578 (unix time) try "date -d @1566142578" if you are using GNU date ***
;PC: @     0x7fcb3b0c2428 gsignal
;*** SIGABRT (@0x3e800000a7c) received by PID 2684 (TID 0x7fcb3c672740) from PID 2684; stack trace: ***
;    @     0x7fcb3b0c24b0 (unknown)
;    @     0x7fcb3b0c2428 gsignal
;    @     0x7fcb3b0c402a abort
;    @     0x7fcb3b6fc84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fcb3b6fa6b6 (unknown)
;    @     0x7fcb3b6fa701 std::terminate()
;    @     0x7fcb3b6fa919 __cxa_throw
;    @     0x7fcb3b7232cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7fcb3c056c40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7fcb3c06cc34 Vlab::SMT::TermConstant::accept()
;    @     0x7fcb3bf6b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fcb3c068f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7fcb3bf6b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fcb3c0576a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fcb3c054a2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7fcb3c068ee6 Vlab::SMT::CharAt::accept()
;    @     0x7fcb3bf6b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fcb3c06547b Vlab::SMT::Eq::visit_children()
;    @     0x7fcb3bf6b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fcb3c0576a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fcb3c05077b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7fcb3c065450 Vlab::SMT::Eq::accept()
;    @     0x7fcb3bf6b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fcb3c057a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fcb3c04e8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fcb3c063b5c Vlab::SMT::And::accept()
;    @     0x7fcb3bf6b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fcb3c057a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fcb3c04dd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fcb3c061d2a Vlab::SMT::Assert::accept()
