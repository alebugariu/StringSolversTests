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
;I0818 17:36:39.328038  2929 UnaryAutomaton.cpp:325] 1
;I0818 17:36:39.328055  2929 UnaryAutomaton.cpp:326] 1
;I0818 17:36:39.328063  2929 UnaryAutomaton.cpp:327] 1
;F0818 17:36:39.337848  2929 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fc96ed8df5d  google::LogMessage::Fail()
;    @     0x7fc96ed90513  google::LogMessage::SendToLog()
;    @     0x7fc96ed8daeb  google::LogMessage::Flush()
;    @     0x7fc96ed8f45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fc96f48dfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fc96f4a3842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fc96f4a28f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fc96f3dc102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fc96f3e007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fc96f2fedab  std::function<>::operator()()
;    @     0x7fc96f2fc844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fc96f3facb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fc96f2fe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc96f2fdbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fc96f3dca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fc96f3f6b5c  Vlab::SMT::And::accept()
;    @     0x7fc96f2fe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc96f3dbca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fc96f3e148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fc96f3f6b5c  Vlab::SMT::And::accept()
;    @     0x7fc96f2fe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc96f3eaa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc96f3e23e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fc96f3f6ebe  Vlab::SMT::Or::accept()
;    @     0x7fc96f2fe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc96f3eaa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc96f3e0d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fc96f3f4d2a  Vlab::SMT::Assert::accept()
;    @     0x7fc96f2fe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc96f403699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc96f3f4067  Vlab::SMT::Script::visit_children()
;    @     0x7fc96f2fe9e0  Vlab::SMT::Visitor::visit_children_of()
