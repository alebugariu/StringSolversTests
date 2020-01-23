(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "\n" (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142577 (unix time) try "date -d @1566142577" if you are using GNU date ***
;PC: @     0x7f9f9135b428 gsignal
;*** SIGABRT (@0x3e800000a67) received by PID 2663 (TID 0x7f9f9290b740) from PID 2663; stack trace: ***
;    @     0x7f9f9135b4b0 (unknown)
;    @     0x7f9f9135b428 gsignal
;    @     0x7f9f9135d02a abort
;    @     0x7f9f9199584d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f9f919936b6 (unknown)
;    @     0x7f9f91993701 std::terminate()
;    @     0x7f9f91993919 __cxa_throw
;    @     0x7f9f919bc2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f9f922efc40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7f9f92305c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f9f922049ad Vlab::SMT::Visitor::visit()
;    @     0x7f9f92301f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7f9f922049e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9f922f06a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f9f922eda2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7f9f92301ee6 Vlab::SMT::CharAt::accept()
;    @     0x7f9f922049ad Vlab::SMT::Visitor::visit()
;    @     0x7f9f922fe47b Vlab::SMT::Eq::visit_children()
;    @     0x7f9f922049e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9f922f06a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f9f922e977b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f9f922fe450 Vlab::SMT::Eq::accept()
;    @     0x7f9f922049ad Vlab::SMT::Visitor::visit()
;    @     0x7f9f922f0a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9f922e78c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f9f922fcb5c Vlab::SMT::And::accept()
;    @     0x7f9f922049ad Vlab::SMT::Visitor::visit()
;    @     0x7f9f922f0a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9f922e6d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f9f922fad2a Vlab::SMT::Assert::accept()
