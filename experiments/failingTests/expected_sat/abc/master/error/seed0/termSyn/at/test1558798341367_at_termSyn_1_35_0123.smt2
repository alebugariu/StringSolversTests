(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at (int.to.str tmp_int0) (str.len tmp_str2)) (int.to.str tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:27.229543  3337 UnaryAutomaton.cpp:325] 1
;I0818 17:37:27.229564  3337 UnaryAutomaton.cpp:326] 1
;I0818 17:37:27.229573  3337 UnaryAutomaton.cpp:327] 1
;I0818 17:37:27.242151  3337 UnaryAutomaton.cpp:325] 1
;I0818 17:37:27.242189  3337 UnaryAutomaton.cpp:326] 1
;I0818 17:37:27.242200  3337 UnaryAutomaton.cpp:327] 1
;F0818 17:37:27.247382  3337 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7ff866abaf5d  google::LogMessage::Fail()
;    @     0x7ff866abd513  google::LogMessage::SendToLog()
;    @     0x7ff866abaaeb  google::LogMessage::Flush()
;    @     0x7ff866abc45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7ff8670dea26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7ff86712c992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7ff86702b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff8670dd762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7ff867129df0  Vlab::SMT::ToString::accept()
;    @     0x7ff86702b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff8670d87f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7ff867125450  Vlab::SMT::Eq::accept()
;    @     0x7ff86702b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff8670d6878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7ff8671175ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7ff86710e96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff867123b5c  Vlab::SMT::And::accept()
;    @     0x7ff86702b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff867117a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff86710dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff867121d2a  Vlab::SMT::Assert::accept()
;    @     0x7ff86702b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff867130699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff867121067  Vlab::SMT::Script::visit_children()
;    @     0x7ff86702b9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff86710db35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7ff86712103c  Vlab::SMT::Script::accept()
;    @     0x7ff86702b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff86710d7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7ff867011b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7ff86616d830  __libc_start_main
