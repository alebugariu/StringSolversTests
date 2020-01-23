(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "0" "" tmp_str2) "\"a\"0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7f5826840ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2246 (TID 0x7f58a5c2e740) from PID 0; stack trace: ***
;    @     0x7f58a467e4b0 (unknown)
;    @     0x7f5826840ed6 dfaProject
;    @     0x7f58a56507ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f58a56e2318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f58a55d9f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f58a5626400 Vlab::SMT::Replace::accept()
;    @     0x7f58a55279ad Vlab::SMT::Visitor::visit()
;    @     0x7f58a55d47f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f58a5621450 Vlab::SMT::Eq::accept()
;    @     0x7f58a55279ad Vlab::SMT::Visitor::visit()
;    @     0x7f58a55d2878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f58a56135ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f58a560a96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f58a561fb5c Vlab::SMT::And::accept()
;    @     0x7f58a55279ad Vlab::SMT::Visitor::visit()
;    @     0x7f58a5613a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f58a5609d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f58a561dd2a Vlab::SMT::Assert::accept()
;    @     0x7f58a55279ad Vlab::SMT::Visitor::visit()
;    @     0x7f58a562c699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f58a561d067 Vlab::SMT::Script::visit_children()
;    @     0x7f58a55279e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f58a5609b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f58a561d03c Vlab::SMT::Script::accept()
;    @     0x7f58a55279ad Vlab::SMT::Visitor::visit()
;    @     0x7f58a56097bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f58a550db84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f58a4669830 __libc_start_main
;    @           0x40de89 _start
