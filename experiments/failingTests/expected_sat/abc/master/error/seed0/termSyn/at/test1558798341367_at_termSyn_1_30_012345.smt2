(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at (int.to.str tmp_int0) (str.indexof tmp_str2 tmp_str2 tmp_int0)) (int.to.str tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:25.132871  3320 UnaryAutomaton.cpp:325] 1
;I0818 17:37:25.132894  3320 UnaryAutomaton.cpp:326] 1
;I0818 17:37:25.132902  3320 UnaryAutomaton.cpp:327] 1
;I0818 17:37:25.203052  3320 UnaryAutomaton.cpp:325] 1
;I0818 17:37:25.203126  3320 UnaryAutomaton.cpp:326] 1
;I0818 17:37:25.203138  3320 UnaryAutomaton.cpp:327] 1
;F0818 17:37:25.212613  3320 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f31eb536f5d  google::LogMessage::Fail()
;    @     0x7f31eb539513  google::LogMessage::SendToLog()
;    @     0x7f31eb536aeb  google::LogMessage::Flush()
;    @     0x7f31eb53845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f31ebb5aa26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f31ebba8992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f31ebaa79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f31ebb59762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f31ebba5df0  Vlab::SMT::ToString::accept()
;    @     0x7f31ebaa79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f31ebb547f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f31ebba1450  Vlab::SMT::Eq::accept()
;    @     0x7f31ebaa79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f31ebb52878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f31ebb935ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f31ebb8a96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f31ebb9fb5c  Vlab::SMT::And::accept()
;    @     0x7f31ebaa79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f31ebb93a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f31ebb89d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f31ebb9dd2a  Vlab::SMT::Assert::accept()
;    @     0x7f31ebaa79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f31ebbac699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f31ebb9d067  Vlab::SMT::Script::visit_children()
;    @     0x7f31ebaa79e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f31ebb89b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f31ebb9d03c  Vlab::SMT::Script::accept()
;    @     0x7f31ebaa79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f31ebb897bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f31eba8db84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f31eabe9830  __libc_start_main
