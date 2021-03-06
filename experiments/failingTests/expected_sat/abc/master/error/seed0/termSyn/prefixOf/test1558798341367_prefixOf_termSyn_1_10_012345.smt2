(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:29.505089  2822 UnaryAutomaton.cpp:325] 1
;I0818 17:36:29.505105  2822 UnaryAutomaton.cpp:326] 1
;I0818 17:36:29.505112  2822 UnaryAutomaton.cpp:327] 1
;F0818 17:36:29.529258  2822 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f087a10bf5d  google::LogMessage::Fail()
;    @     0x7f087a10e513  google::LogMessage::SendToLog()
;    @     0x7f087a10baeb  google::LogMessage::Flush()
;    @     0x7f087a10d45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f087a80bfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f087a821842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f087a8208f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f087a75a102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f087a75e07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f087a67cdab  std::function<>::operator()()
;    @     0x7f087a67a844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f087a778cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f087a67c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f087a67bbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f087a75aa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f087a774b5c  Vlab::SMT::And::accept()
;    @     0x7f087a67c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f087a759ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f087a75f48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f087a774b5c  Vlab::SMT::And::accept()
;    @     0x7f087a67c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f087a768a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f087a7603e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f087a774ebe  Vlab::SMT::Or::accept()
;    @     0x7f087a67c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f087a768a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f087a75ed2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f087a772d2a  Vlab::SMT::Assert::accept()
;    @     0x7f087a67c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f087a781699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f087a772067  Vlab::SMT::Script::visit_children()
;    @     0x7f087a67c9e0  Vlab::SMT::Visitor::visit_children_of()
