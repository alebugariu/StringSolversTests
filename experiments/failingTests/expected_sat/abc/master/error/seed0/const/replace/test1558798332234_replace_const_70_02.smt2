(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "0\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7f4dfd64bed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2508 (TID 0x7f4e7ca39740) from PID 0; stack trace: ***
;    @     0x7f4e7b4894b0 (unknown)
;    @     0x7f4dfd64bed6 dfaProject
;    @     0x7f4e7c45b7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f4e7c4ed318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f4e7c3e4f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f4e7c431400 Vlab::SMT::Replace::accept()
;    @     0x7f4e7c3329ad Vlab::SMT::Visitor::visit()
;    @     0x7f4e7c3df7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f4e7c42c450 Vlab::SMT::Eq::accept()
;    @     0x7f4e7c3329ad Vlab::SMT::Visitor::visit()
;    @     0x7f4e7c3dd878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f4e7c41e5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f4e7c41596e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f4e7c42ab5c Vlab::SMT::And::accept()
;    @     0x7f4e7c3329ad Vlab::SMT::Visitor::visit()
;    @     0x7f4e7c41ea82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f4e7c414d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f4e7c428d2a Vlab::SMT::Assert::accept()
;    @     0x7f4e7c3329ad Vlab::SMT::Visitor::visit()
;    @     0x7f4e7c437699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4e7c428067 Vlab::SMT::Script::visit_children()
;    @     0x7f4e7c3329e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4e7c414b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f4e7c42803c Vlab::SMT::Script::accept()
;    @     0x7f4e7c3329ad Vlab::SMT::Visitor::visit()
;    @     0x7f4e7c4147bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4e7c318b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f4e7b474830 __libc_start_main
;    @           0x40de89 _start
