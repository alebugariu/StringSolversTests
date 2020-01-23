(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\"a\"" "" tmp_str2) "\"a\"\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7fa3e9b73ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2478 (TID 0x7fa468f61740) from PID 0; stack trace: ***
;    @     0x7fa4679b14b0 (unknown)
;    @     0x7fa3e9b73ed6 dfaProject
;    @     0x7fa4689837ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fa468a15318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fa46890cf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fa468959400 Vlab::SMT::Replace::accept()
;    @     0x7fa46885a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa4689077f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fa468954450 Vlab::SMT::Eq::accept()
;    @     0x7fa46885a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa468905878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fa4689465ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fa46893d96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa468952b5c Vlab::SMT::And::accept()
;    @     0x7fa46885a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa468946a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa46893cd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa468950d2a Vlab::SMT::Assert::accept()
;    @     0x7fa46885a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa46895f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa468950067 Vlab::SMT::Script::visit_children()
;    @     0x7fa46885a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa46893cb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fa46895003c Vlab::SMT::Script::accept()
;    @     0x7fa46885a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa46893c7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fa468840b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fa46799c830 __libc_start_main
;    @           0x40de89 _start
