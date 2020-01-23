(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "a" "" tmp_str2) "\na"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f72a4271ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2272 (TID 0x7f732365f740) from PID 0; stack trace: ***
;    @     0x7f73220af4b0 (unknown)
;    @     0x7f72a4271ed6 dfaProject
;    @     0x7f73230817ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f7323113318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f732300af05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f7323057400 Vlab::SMT::Replace::accept()
;    @     0x7f7322f589ad Vlab::SMT::Visitor::visit()
;    @     0x7f73230057f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f7323052450 Vlab::SMT::Eq::accept()
;    @     0x7f7322f589ad Vlab::SMT::Visitor::visit()
;    @     0x7f7323003878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f73230445ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f732303b96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7323050b5c Vlab::SMT::And::accept()
;    @     0x7f7322f589ad Vlab::SMT::Visitor::visit()
;    @     0x7f7323044a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f732303ad2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f732304ed2a Vlab::SMT::Assert::accept()
;    @     0x7f7322f589ad Vlab::SMT::Visitor::visit()
;    @     0x7f732305d699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f732304e067 Vlab::SMT::Script::visit_children()
;    @     0x7f7322f589e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f732303ab35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f732304e03c Vlab::SMT::Script::accept()
;    @     0x7f7322f589ad Vlab::SMT::Visitor::visit()
;    @     0x7f732303a7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f7322f3eb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f732209a830 __libc_start_main
;    @           0x40de89 _start
