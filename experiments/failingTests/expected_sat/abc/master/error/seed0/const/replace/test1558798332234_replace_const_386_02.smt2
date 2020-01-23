(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "a0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f500d9f0ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2358 (TID 0x7f508cdde740) from PID 0; stack trace: ***
;    @     0x7f508b82e4b0 (unknown)
;    @     0x7f500d9f0ed6 dfaProject
;    @     0x7f508c8007ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f508c892318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f508c789f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f508c7d6400 Vlab::SMT::Replace::accept()
;    @     0x7f508c6d79ad Vlab::SMT::Visitor::visit()
;    @     0x7f508c7847f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f508c7d1450 Vlab::SMT::Eq::accept()
;    @     0x7f508c6d79ad Vlab::SMT::Visitor::visit()
;    @     0x7f508c782878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f508c7c35ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f508c7ba96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f508c7cfb5c Vlab::SMT::And::accept()
;    @     0x7f508c6d79ad Vlab::SMT::Visitor::visit()
;    @     0x7f508c7c3a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f508c7b9d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f508c7cdd2a Vlab::SMT::Assert::accept()
;    @     0x7f508c6d79ad Vlab::SMT::Visitor::visit()
;    @     0x7f508c7dc699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f508c7cd067 Vlab::SMT::Script::visit_children()
;    @     0x7f508c6d79e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f508c7b9b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f508c7cd03c Vlab::SMT::Script::accept()
;    @     0x7f508c6d79ad Vlab::SMT::Visitor::visit()
;    @     0x7f508c7b97bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f508c6bdb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f508b819830 __libc_start_main
;    @           0x40de89 _start
