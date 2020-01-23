(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\"a\"" "" tmp_str2) "2\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7fc8af5e3ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2289 (TID 0x7fc92e9d1740) from PID 0; stack trace: ***
;    @     0x7fc92d4214b0 (unknown)
;    @     0x7fc8af5e3ed6 dfaProject
;    @     0x7fc92e3f37ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fc92e485318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fc92e37cf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fc92e3c9400 Vlab::SMT::Replace::accept()
;    @     0x7fc92e2ca9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc92e3777f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fc92e3c4450 Vlab::SMT::Eq::accept()
;    @     0x7fc92e2ca9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc92e375878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fc92e3b65ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fc92e3ad96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fc92e3c2b5c Vlab::SMT::And::accept()
;    @     0x7fc92e2ca9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc92e3b6a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc92e3acd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fc92e3c0d2a Vlab::SMT::Assert::accept()
;    @     0x7fc92e2ca9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc92e3cf699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc92e3c0067 Vlab::SMT::Script::visit_children()
;    @     0x7fc92e2ca9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc92e3acb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fc92e3c003c Vlab::SMT::Script::accept()
;    @     0x7fc92e2ca9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc92e3ac7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fc92e2b0b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fc92d40c830 __libc_start_main
;    @           0x40de89 _start
