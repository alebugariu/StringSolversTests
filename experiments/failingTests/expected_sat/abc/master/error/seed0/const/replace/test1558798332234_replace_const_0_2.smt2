(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "" "" tmp_str2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;PC: @     0x7f2884418ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2396 (TID 0x7f2903806740) from PID 0; stack trace: ***
;    @     0x7f29022564b0 (unknown)
;    @     0x7f2884418ed6 dfaProject
;    @     0x7f29032287ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f29032ba318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f29031b1f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f29031fe400 Vlab::SMT::Replace::accept()
;    @     0x7f29030ff9ad Vlab::SMT::Visitor::visit()
;    @     0x7f29031ac7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f29031f9450 Vlab::SMT::Eq::accept()
;    @     0x7f29030ff9ad Vlab::SMT::Visitor::visit()
;    @     0x7f29031aa878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f29031eb5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f29031e296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f29031f7b5c Vlab::SMT::And::accept()
;    @     0x7f29030ff9ad Vlab::SMT::Visitor::visit()
;    @     0x7f29031eba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f29031e1d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f29031f5d2a Vlab::SMT::Assert::accept()
;    @     0x7f29030ff9ad Vlab::SMT::Visitor::visit()
;    @     0x7f2903204699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f29031f5067 Vlab::SMT::Script::visit_children()
;    @     0x7f29030ff9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f29031e1b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f29031f503c Vlab::SMT::Script::accept()
;    @     0x7f29030ff9ad Vlab::SMT::Visitor::visit()
;    @     0x7f29031e17bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f29030e5b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f2902241830 __libc_start_main
;    @           0x40de89 _start
