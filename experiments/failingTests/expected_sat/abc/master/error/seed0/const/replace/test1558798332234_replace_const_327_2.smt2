(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "-1" "" tmp_str2) "2-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f8a13a53ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2599 (TID 0x7f8a92e41740) from PID 0; stack trace: ***
;    @     0x7f8a918914b0 (unknown)
;    @     0x7f8a13a53ed6 dfaProject
;    @     0x7f8a928637ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f8a928f5318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f8a927ecf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f8a92839400 Vlab::SMT::Replace::accept()
;    @     0x7f8a9273a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8a927e77f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f8a92834450 Vlab::SMT::Eq::accept()
;    @     0x7f8a9273a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8a927e5878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f8a928265ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f8a9281d96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8a92832b5c Vlab::SMT::And::accept()
;    @     0x7f8a9273a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8a92826a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8a9281cd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8a92830d2a Vlab::SMT::Assert::accept()
;    @     0x7f8a9273a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8a9283f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8a92830067 Vlab::SMT::Script::visit_children()
;    @     0x7f8a9273a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8a9281cb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f8a9283003c Vlab::SMT::Script::accept()
;    @     0x7f8a9273a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8a9281c7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f8a92720b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f8a9187c830 __libc_start_main
;    @           0x40de89 _start
