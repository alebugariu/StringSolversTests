(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "2\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7fd600b3eed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2374 (TID 0x7fd67ff2c740) from PID 0; stack trace: ***
;    @     0x7fd67e97c4b0 (unknown)
;    @     0x7fd600b3eed6 dfaProject
;    @     0x7fd67f94e7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fd67f9e0318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fd67f8d7f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fd67f924400 Vlab::SMT::Replace::accept()
;    @     0x7fd67f8259ad Vlab::SMT::Visitor::visit()
;    @     0x7fd67f8d27f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fd67f91f450 Vlab::SMT::Eq::accept()
;    @     0x7fd67f8259ad Vlab::SMT::Visitor::visit()
;    @     0x7fd67f8d0878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fd67f9115ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fd67f90896e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd67f91db5c Vlab::SMT::And::accept()
;    @     0x7fd67f8259ad Vlab::SMT::Visitor::visit()
;    @     0x7fd67f911a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd67f907d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd67f91bd2a Vlab::SMT::Assert::accept()
;    @     0x7fd67f8259ad Vlab::SMT::Visitor::visit()
;    @     0x7fd67f92a699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd67f91b067 Vlab::SMT::Script::visit_children()
;    @     0x7fd67f8259e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd67f907b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fd67f91b03c Vlab::SMT::Script::accept()
;    @     0x7fd67f8259ad Vlab::SMT::Visitor::visit()
;    @     0x7fd67f9077bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fd67f80bb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fd67e967830 __libc_start_main
;    @           0x40de89 _start
