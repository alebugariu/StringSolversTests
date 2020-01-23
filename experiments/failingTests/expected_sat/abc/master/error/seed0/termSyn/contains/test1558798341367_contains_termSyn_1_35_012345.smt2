(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.contains (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:06.523474  3152 UnaryAutomaton.cpp:325] 1
;I0818 17:37:06.523500  3152 UnaryAutomaton.cpp:326] 1
;I0818 17:37:06.523510  3152 UnaryAutomaton.cpp:327] 1
;F0818 17:37:06.706275  3152 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7ff3b8a23f5d  google::LogMessage::Fail()
;    @     0x7ff3b8a26513  google::LogMessage::SendToLog()
;    @     0x7ff3b8a23aeb  google::LogMessage::Flush()
;    @     0x7ff3b8a2545e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7ff3b9123fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7ff3b9139842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7ff3b91388f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7ff3b9072102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7ff3b907607b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7ff3b8f94dab  std::function<>::operator()()
;    @     0x7ff3b8f92844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7ff3b9090cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7ff3b8f949ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b8f93bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7ff3b9072a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7ff3b908cb5c  Vlab::SMT::And::accept()
;    @     0x7ff3b8f949ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b9071ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7ff3b907748c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff3b908cb5c  Vlab::SMT::And::accept()
;    @     0x7ff3b8f949ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b9080a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff3b90783e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7ff3b908cebe  Vlab::SMT::Or::accept()
;    @     0x7ff3b8f949ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b9080a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff3b9076d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff3b908ad2a  Vlab::SMT::Assert::accept()
;    @     0x7ff3b8f949ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b9099699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff3b908a067  Vlab::SMT::Script::visit_children()
;    @     0x7ff3b8f949e0  Vlab::SMT::Visitor::visit_children_of()
