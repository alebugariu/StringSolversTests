(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:22.185271  2742 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7ff3b301af5d  google::LogMessage::Fail()
;    @     0x7ff3b301d513  google::LogMessage::SendToLog()
;    @     0x7ff3b301aaeb  google::LogMessage::Flush()
;    @     0x7ff3b301c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7ff3b371afcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7ff3b3730842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7ff3b372f8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7ff3b3669102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7ff3b366d07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7ff3b358bdab  std::function<>::operator()()
;    @     0x7ff3b3589844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7ff3b3687cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7ff3b358b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b358abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7ff3b3669a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7ff3b3683b5c  Vlab::SMT::And::accept()
;    @     0x7ff3b358b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b3668ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7ff3b366e48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff3b3683b5c  Vlab::SMT::And::accept()
;    @     0x7ff3b358b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b3677a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff3b366f3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7ff3b3683ebe  Vlab::SMT::Or::accept()
;    @     0x7ff3b358b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b3677a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff3b366dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff3b3681d2a  Vlab::SMT::Assert::accept()
;    @     0x7ff3b358b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3b3690699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff3b3681067  Vlab::SMT::Script::visit_children()
;    @     0x7ff3b358b9e0  Vlab::SMT::Visitor::visit_children_of()
