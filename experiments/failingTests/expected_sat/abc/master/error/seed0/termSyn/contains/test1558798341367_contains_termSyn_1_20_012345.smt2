(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (= (str.contains (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int3)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;actual status: not_implemented
;I0818 17:37:03.261737  3124 UnaryAutomaton.cpp:325] 1
;I0818 17:37:03.261755  3124 UnaryAutomaton.cpp:326] 1
;I0818 17:37:03.261765  3124 UnaryAutomaton.cpp:327] 1
;F0818 17:37:03.296926  3124 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f78e829af5d  google::LogMessage::Fail()
;    @     0x7f78e829d513  google::LogMessage::SendToLog()
;    @     0x7f78e829aaeb  google::LogMessage::Flush()
;    @     0x7f78e829c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f78e899afcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f78e89b0842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f78e89af8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f78e88e9102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f78e88ed07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f78e880bdab  std::function<>::operator()()
;    @     0x7f78e8809844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f78e8907cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f78e880b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f78e880abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f78e88e9a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f78e8903b5c  Vlab::SMT::And::accept()
;    @     0x7f78e880b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f78e88e8ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f78e88ee48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f78e8903b5c  Vlab::SMT::And::accept()
;    @     0x7f78e880b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f78e88f7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f78e88ef3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f78e8903ebe  Vlab::SMT::Or::accept()
;    @     0x7f78e880b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f78e88f7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f78e88edd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f78e8901d2a  Vlab::SMT::Assert::accept()
;    @     0x7f78e880b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f78e8910699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f78e8901067  Vlab::SMT::Script::visit_children()
;    @     0x7f78e880b9e0  Vlab::SMT::Visitor::visit_children_of()
