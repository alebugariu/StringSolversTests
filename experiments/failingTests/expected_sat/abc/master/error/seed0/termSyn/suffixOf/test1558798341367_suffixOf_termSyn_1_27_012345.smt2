(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:22.935547  2750 UnaryAutomaton.cpp:325] 1
;I0818 17:36:22.935571  2750 UnaryAutomaton.cpp:326] 1
;I0818 17:36:22.935580  2750 UnaryAutomaton.cpp:327] 1
;F0818 17:36:22.947846  2750 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fadd1f2af5d  google::LogMessage::Fail()
;    @     0x7fadd1f2d513  google::LogMessage::SendToLog()
;    @     0x7fadd1f2aaeb  google::LogMessage::Flush()
;    @     0x7fadd1f2c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fadd262afcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fadd2640842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fadd263f8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fadd2579102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fadd257d07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fadd249bdab  std::function<>::operator()()
;    @     0x7fadd2499844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fadd2597cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fadd249b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fadd249abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fadd2579a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fadd2593b5c  Vlab::SMT::And::accept()
;    @     0x7fadd249b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fadd2578ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fadd257e48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fadd2593b5c  Vlab::SMT::And::accept()
;    @     0x7fadd249b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fadd2587a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fadd257f3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fadd2593ebe  Vlab::SMT::Or::accept()
;    @     0x7fadd249b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fadd2587a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fadd257dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fadd2591d2a  Vlab::SMT::Assert::accept()
;    @     0x7fadd249b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fadd25a0699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fadd2591067  Vlab::SMT::Script::visit_children()
;    @     0x7fadd249b9e0  Vlab::SMT::Visitor::visit_children_of()
