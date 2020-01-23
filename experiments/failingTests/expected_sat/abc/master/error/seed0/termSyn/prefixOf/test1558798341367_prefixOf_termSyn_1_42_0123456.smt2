(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:32.130231  2850 UnaryAutomaton.cpp:325] 1
;I0818 17:36:32.130264  2850 UnaryAutomaton.cpp:326] 1
;I0818 17:36:32.130272  2850 UnaryAutomaton.cpp:327] 1
;F0818 17:36:32.147184  2850 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fe4da8e4f5d  google::LogMessage::Fail()
;    @     0x7fe4da8e7513  google::LogMessage::SendToLog()
;    @     0x7fe4da8e4aeb  google::LogMessage::Flush()
;    @     0x7fe4da8e645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fe4dafe4fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fe4daffa842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fe4daff98f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fe4daf33102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fe4daf3707b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fe4dae55dab  std::function<>::operator()()
;    @     0x7fe4dae53844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fe4daf51cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fe4dae559ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe4dae54bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fe4daf33a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fe4daf4db5c  Vlab::SMT::And::accept()
;    @     0x7fe4dae559ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe4daf32ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fe4daf3848c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fe4daf4db5c  Vlab::SMT::And::accept()
;    @     0x7fe4dae559ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe4daf41a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe4daf393e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fe4daf4debe  Vlab::SMT::Or::accept()
;    @     0x7fe4dae559ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe4daf41a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe4daf37d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fe4daf4bd2a  Vlab::SMT::Assert::accept()
;    @     0x7fe4dae559ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe4daf5a699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fe4daf4b067  Vlab::SMT::Script::visit_children()
;    @     0x7fe4dae559e0  Vlab::SMT::Visitor::visit_children_of()
