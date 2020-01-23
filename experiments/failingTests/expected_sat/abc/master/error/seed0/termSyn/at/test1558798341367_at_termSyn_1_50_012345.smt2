(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int13 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.replace tmp_str0 tmp_str0 tmp_str0) (str.len tmp_str0)) (int.to.str tmp_int13)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int13 = -1
;actual status: not_implemented
;I0818 17:37:26.425387  3329 UnaryAutomaton.cpp:325] 1
;I0818 17:37:26.425441  3329 UnaryAutomaton.cpp:326] 1
;I0818 17:37:26.425457  3329 UnaryAutomaton.cpp:327] 1
;F0818 17:37:26.431380  3329 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f18f4a56f5d  google::LogMessage::Fail()
;    @     0x7f18f4a59513  google::LogMessage::SendToLog()
;    @     0x7f18f4a56aeb  google::LogMessage::Flush()
;    @     0x7f18f4a5845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f18f507aa26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f18f50c8992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f18f4fc79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f18f5079762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f18f50c5df0  Vlab::SMT::ToString::accept()
;    @     0x7f18f4fc79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f18f50747f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f18f50c1450  Vlab::SMT::Eq::accept()
;    @     0x7f18f4fc79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f18f5072878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f18f50b35ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f18f50aa96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f18f50bfb5c  Vlab::SMT::And::accept()
;    @     0x7f18f4fc79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f18f50b3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f18f50a9d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f18f50bdd2a  Vlab::SMT::Assert::accept()
;    @     0x7f18f4fc79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f18f50cc699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f18f50bd067  Vlab::SMT::Script::visit_children()
;    @     0x7f18f4fc79e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f18f50a9b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f18f50bd03c  Vlab::SMT::Script::accept()
;    @     0x7f18f4fc79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f18f50a97bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f18f4fadb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f18f4109830  __libc_start_main
