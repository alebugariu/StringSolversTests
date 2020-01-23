(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:24.589754  2768 UnaryAutomaton.cpp:325] 1
;I0818 17:36:24.589794  2768 UnaryAutomaton.cpp:326] 1
;I0818 17:36:24.589807  2768 UnaryAutomaton.cpp:327] 1
;F0818 17:36:24.609006  2768 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f2ea4eeaf5d  google::LogMessage::Fail()
;    @     0x7f2ea4eed513  google::LogMessage::SendToLog()
;    @     0x7f2ea4eeaaeb  google::LogMessage::Flush()
;    @     0x7f2ea4eec45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f2ea55eafcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f2ea5600842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f2ea55ff8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f2ea5539102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f2ea553d07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f2ea545bdab  std::function<>::operator()()
;    @     0x7f2ea5459844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f2ea5557cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f2ea545b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2ea545abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f2ea5539a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f2ea5553b5c  Vlab::SMT::And::accept()
;    @     0x7f2ea545b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2ea5538ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f2ea553e48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f2ea5553b5c  Vlab::SMT::And::accept()
;    @     0x7f2ea545b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2ea5547a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2ea553f3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f2ea5553ebe  Vlab::SMT::Or::accept()
;    @     0x7f2ea545b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2ea5547a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2ea553dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f2ea5551d2a  Vlab::SMT::Assert::accept()
;    @     0x7f2ea545b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2ea5560699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2ea5551067  Vlab::SMT::Script::visit_children()
;    @     0x7f2ea545b9e0  Vlab::SMT::Visitor::visit_children_of()
