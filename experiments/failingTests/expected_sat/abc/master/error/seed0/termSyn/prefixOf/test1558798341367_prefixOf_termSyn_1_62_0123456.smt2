(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:31.137907  2840 UnaryAutomaton.cpp:325] 1
;I0818 17:36:31.137923  2840 UnaryAutomaton.cpp:326] 1
;I0818 17:36:31.137931  2840 UnaryAutomaton.cpp:327] 1
;F0818 17:36:31.196581  2840 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fb3eff5af5d  google::LogMessage::Fail()
;    @     0x7fb3eff5d513  google::LogMessage::SendToLog()
;    @     0x7fb3eff5aaeb  google::LogMessage::Flush()
;    @     0x7fb3eff5c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fb3f065afcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fb3f0670842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fb3f066f8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fb3f05a9102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fb3f05ad07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fb3f04cbdab  std::function<>::operator()()
;    @     0x7fb3f04c9844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fb3f05c7cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fb3f04cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb3f04cabee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fb3f05a9a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fb3f05c3b5c  Vlab::SMT::And::accept()
;    @     0x7fb3f04cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb3f05a8ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fb3f05ae48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb3f05c3b5c  Vlab::SMT::And::accept()
;    @     0x7fb3f04cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb3f05b7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb3f05af3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fb3f05c3ebe  Vlab::SMT::Or::accept()
;    @     0x7fb3f04cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb3f05b7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb3f05add2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb3f05c1d2a  Vlab::SMT::Assert::accept()
;    @     0x7fb3f04cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb3f05d0699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb3f05c1067  Vlab::SMT::Script::visit_children()
;    @     0x7fb3f04cb9e0  Vlab::SMT::Visitor::visit_children_of()
