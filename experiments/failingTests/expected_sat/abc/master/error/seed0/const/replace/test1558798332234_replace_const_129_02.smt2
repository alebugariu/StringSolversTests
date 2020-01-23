(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\"a\"a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7f23b9035ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2464 (TID 0x7f2438423740) from PID 0; stack trace: ***
;    @     0x7f2436e734b0 (unknown)
;    @     0x7f23b9035ed6 dfaProject
;    @     0x7f2437e457ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f2437ed7318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f2437dcef05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f2437e1b400 Vlab::SMT::Replace::accept()
;    @     0x7f2437d1c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f2437dc97f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f2437e16450 Vlab::SMT::Eq::accept()
;    @     0x7f2437d1c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f2437dc7878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f2437e085ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f2437dff96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f2437e14b5c Vlab::SMT::And::accept()
;    @     0x7f2437d1c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f2437e08a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2437dfed2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f2437e12d2a Vlab::SMT::Assert::accept()
;    @     0x7f2437d1c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f2437e21699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2437e12067 Vlab::SMT::Script::visit_children()
;    @     0x7f2437d1c9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2437dfeb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f2437e1203c Vlab::SMT::Script::accept()
;    @     0x7f2437d1c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f2437dfe7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f2437d02b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f2436e5e830 __libc_start_main
;    @           0x40de89 _start
