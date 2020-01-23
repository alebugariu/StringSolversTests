(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (= (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:36.179064  2893 UnaryAutomaton.cpp:325] 1
;I0818 17:36:36.179081  2893 UnaryAutomaton.cpp:326] 1
;I0818 17:36:36.179090  2893 UnaryAutomaton.cpp:327] 1
;F0818 17:36:36.189154  2893 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f64b481bf5d  google::LogMessage::Fail()
;    @     0x7f64b481e513  google::LogMessage::SendToLog()
;    @     0x7f64b481baeb  google::LogMessage::Flush()
;    @     0x7f64b481d45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f64b4f1bfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f64b4f31842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f64b4f308f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f64b4e6a102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f64b4e6e07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f64b4d8cdab  std::function<>::operator()()
;    @     0x7f64b4d8a844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f64b4e88cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f64b4d8c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f64b4d8bbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f64b4e6aa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f64b4e84b5c  Vlab::SMT::And::accept()
;    @     0x7f64b4d8c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f64b4e69ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f64b4e6f48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f64b4e84b5c  Vlab::SMT::And::accept()
;    @     0x7f64b4d8c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f64b4e78a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f64b4e703e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f64b4e84ebe  Vlab::SMT::Or::accept()
;    @     0x7f64b4d8c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f64b4e78a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f64b4e6ed2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f64b4e82d2a  Vlab::SMT::Assert::accept()
;    @     0x7f64b4d8c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f64b4e91699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f64b4e82067  Vlab::SMT::Script::visit_children()
;    @     0x7f64b4d8c9e0  Vlab::SMT::Visitor::visit_children_of()
