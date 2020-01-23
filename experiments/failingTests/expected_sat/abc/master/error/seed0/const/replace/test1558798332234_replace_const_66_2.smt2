(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\"a\"" "" tmp_str2) "a\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f40ca847ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2333 (TID 0x7f4149c35740) from PID 0; stack trace: ***
;    @     0x7f41486854b0 (unknown)
;    @     0x7f40ca847ed6 dfaProject
;    @     0x7f41496577ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f41496e9318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f41495e0f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f414962d400 Vlab::SMT::Replace::accept()
;    @     0x7f414952e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f41495db7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f4149628450 Vlab::SMT::Eq::accept()
;    @     0x7f414952e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f41495d9878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f414961a5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f414961196e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f4149626b5c Vlab::SMT::And::accept()
;    @     0x7f414952e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f414961aa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f4149610d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f4149624d2a Vlab::SMT::Assert::accept()
;    @     0x7f414952e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4149633699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4149624067 Vlab::SMT::Script::visit_children()
;    @     0x7f414952e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4149610b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f414962403c Vlab::SMT::Script::accept()
;    @     0x7f414952e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f41496107bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4149514b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f4148670830 __libc_start_main
;    @           0x40de89 _start
