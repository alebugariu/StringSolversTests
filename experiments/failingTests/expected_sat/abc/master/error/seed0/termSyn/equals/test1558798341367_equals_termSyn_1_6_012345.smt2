(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (= (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:36.867463  2901 UnaryAutomaton.cpp:325] 1
;I0818 17:36:36.871546  2901 UnaryAutomaton.cpp:326] 1
;I0818 17:36:36.871563  2901 UnaryAutomaton.cpp:327] 1
;F0818 17:36:36.887017  2901 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7faa99b39f5d  google::LogMessage::Fail()
;    @     0x7faa99b3c513  google::LogMessage::SendToLog()
;    @     0x7faa99b39aeb  google::LogMessage::Flush()
;    @     0x7faa99b3b45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7faa9a239fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7faa9a24f842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7faa9a24e8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7faa9a188102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7faa9a18c07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7faa9a0aadab  std::function<>::operator()()
;    @     0x7faa9a0a8844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7faa9a1a6cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7faa9a0aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faa9a0a9bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7faa9a188a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7faa9a1a2b5c  Vlab::SMT::And::accept()
;    @     0x7faa9a0aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faa9a187ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7faa9a18d48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7faa9a1a2b5c  Vlab::SMT::And::accept()
;    @     0x7faa9a0aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faa9a196a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7faa9a18e3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7faa9a1a2ebe  Vlab::SMT::Or::accept()
;    @     0x7faa9a0aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faa9a196a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7faa9a18cd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7faa9a1a0d2a  Vlab::SMT::Assert::accept()
;    @     0x7faa9a0aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7faa9a1af699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7faa9a1a0067  Vlab::SMT::Script::visit_children()
;    @     0x7faa9a0aa9e0  Vlab::SMT::Visitor::visit_children_of()
