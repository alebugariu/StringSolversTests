(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "02"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 2
;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7f35ddee9ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2450 (TID 0x7f365d2d7740) from PID 0; stack trace: ***
;    @     0x7f365bd274b0 (unknown)
;    @     0x7f35ddee9ed6 dfaProject
;    @     0x7f365ccf97ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f365cd8b318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f365cc82f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f365cccf400 Vlab::SMT::Replace::accept()
;    @     0x7f365cbd09ad Vlab::SMT::Visitor::visit()
;    @     0x7f365cc7d7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f365ccca450 Vlab::SMT::Eq::accept()
;    @     0x7f365cbd09ad Vlab::SMT::Visitor::visit()
;    @     0x7f365cc7b878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f365ccbc5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f365ccb396e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f365ccc8b5c Vlab::SMT::And::accept()
;    @     0x7f365cbd09ad Vlab::SMT::Visitor::visit()
;    @     0x7f365ccbca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f365ccb2d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f365ccc6d2a Vlab::SMT::Assert::accept()
;    @     0x7f365cbd09ad Vlab::SMT::Visitor::visit()
;    @     0x7f365ccd5699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f365ccc6067 Vlab::SMT::Script::visit_children()
;    @     0x7f365cbd09e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f365ccb2b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f365ccc603c Vlab::SMT::Script::accept()
;    @     0x7f365cbd09ad Vlab::SMT::Visitor::visit()
;    @     0x7f365ccb27bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f365cbb6b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f365bd12830 __libc_start_main
;    @           0x40de89 _start
