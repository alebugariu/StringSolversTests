(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "" "" tmp_str2) "a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f49a60f8ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2320 (TID 0x7f4a254e6740) from PID 0; stack trace: ***
;    @     0x7f4a23f364b0 (unknown)
;    @     0x7f49a60f8ed6 dfaProject
;    @     0x7f4a24f087ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f4a24f9a318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f4a24e91f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f4a24ede400 Vlab::SMT::Replace::accept()
;    @     0x7f4a24ddf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a24e8c7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f4a24ed9450 Vlab::SMT::Eq::accept()
;    @     0x7f4a24ddf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a24e8a878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f4a24ecb5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f4a24ec296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f4a24ed7b5c Vlab::SMT::And::accept()
;    @     0x7f4a24ddf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a24ecba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f4a24ec1d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f4a24ed5d2a Vlab::SMT::Assert::accept()
;    @     0x7f4a24ddf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a24ee4699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4a24ed5067 Vlab::SMT::Script::visit_children()
;    @     0x7f4a24ddf9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4a24ec1b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f4a24ed503c Vlab::SMT::Script::accept()
;    @     0x7f4a24ddf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a24ec17bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4a24dc5b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f4a23f21830 __libc_start_main
;    @           0x40de89 _start
