(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:27.106106  2796 UnaryAutomaton.cpp:325] 1
;I0818 17:36:27.106122  2796 UnaryAutomaton.cpp:326] 1
;I0818 17:36:27.106130  2796 UnaryAutomaton.cpp:327] 1
;F0818 17:36:27.119868  2796 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fd29f913f5d  google::LogMessage::Fail()
;    @     0x7fd29f916513  google::LogMessage::SendToLog()
;    @     0x7fd29f913aeb  google::LogMessage::Flush()
;    @     0x7fd29f91545e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fd2a0013fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fd2a0029842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fd2a00288f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fd29ff62102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fd29ff6607b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fd29fe84dab  std::function<>::operator()()
;    @     0x7fd29fe82844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fd29ff80cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fd29fe849ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd29fe83bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fd29ff62a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fd29ff7cb5c  Vlab::SMT::And::accept()
;    @     0x7fd29fe849ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd29ff61ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fd29ff6748c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd29ff7cb5c  Vlab::SMT::And::accept()
;    @     0x7fd29fe849ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd29ff70a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd29ff683e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fd29ff7cebe  Vlab::SMT::Or::accept()
;    @     0x7fd29fe849ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd29ff70a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd29ff66d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd29ff7ad2a  Vlab::SMT::Assert::accept()
;    @     0x7fd29fe849ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd29ff89699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd29ff7a067  Vlab::SMT::Script::visit_children()
;    @     0x7fd29fe849e0  Vlab::SMT::Visitor::visit_children_of()
