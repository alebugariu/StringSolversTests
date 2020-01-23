(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:21.041326  2730 UnaryAutomaton.cpp:325] 1
;I0818 17:36:21.047240  2730 UnaryAutomaton.cpp:326] 1
;I0818 17:36:21.047260  2730 UnaryAutomaton.cpp:327] 1
;F0818 17:36:21.078788  2730 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f98ebdadf5d  google::LogMessage::Fail()
;    @     0x7f98ebdb0513  google::LogMessage::SendToLog()
;    @     0x7f98ebdadaeb  google::LogMessage::Flush()
;    @     0x7f98ebdaf45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f98ec4adfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f98ec4c3842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f98ec4c28f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f98ec3fc102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f98ec40007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f98ec31edab  std::function<>::operator()()
;    @     0x7f98ec31c844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f98ec41acb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f98ec31e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f98ec31dbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f98ec3fca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f98ec416b5c  Vlab::SMT::And::accept()
;    @     0x7f98ec31e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f98ec3fbca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f98ec40148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f98ec416b5c  Vlab::SMT::And::accept()
;    @     0x7f98ec31e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f98ec40aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f98ec4023e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f98ec416ebe  Vlab::SMT::Or::accept()
;    @     0x7f98ec31e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f98ec40aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f98ec400d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f98ec414d2a  Vlab::SMT::Assert::accept()
;    @     0x7f98ec31e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f98ec423699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f98ec414067  Vlab::SMT::Script::visit_children()
;    @     0x7f98ec31e9e0  Vlab::SMT::Visitor::visit_children_of()
