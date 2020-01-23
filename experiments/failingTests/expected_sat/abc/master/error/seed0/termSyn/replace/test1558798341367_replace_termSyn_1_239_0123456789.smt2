(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:13.266489  3217 UnaryAutomaton.cpp:325] 1
;I0818 17:37:13.266508  3217 UnaryAutomaton.cpp:326] 1
;I0818 17:37:13.266516  3217 UnaryAutomaton.cpp:327] 1
;F0818 17:37:13.328192  3217 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7feeb6f2af5d  google::LogMessage::Fail()
;    @     0x7feeb6f2d513  google::LogMessage::SendToLog()
;    @     0x7feeb6f2aaeb  google::LogMessage::Flush()
;    @     0x7feeb6f2c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7feeb754ea26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7feeb759c992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7feeb749b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7feeb754d762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7feeb7599df0  Vlab::SMT::ToString::accept()
;    @     0x7feeb749b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7feeb75487f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7feeb7595450  Vlab::SMT::Eq::accept()
;    @     0x7feeb749b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7feeb7546878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7feeb75875ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7feeb757e96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7feeb7593b5c  Vlab::SMT::And::accept()
;    @     0x7feeb749b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7feeb7587a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7feeb757dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7feeb7591d2a  Vlab::SMT::Assert::accept()
;    @     0x7feeb749b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7feeb75a0699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7feeb7591067  Vlab::SMT::Script::visit_children()
;    @     0x7feeb749b9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7feeb757db35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7feeb759103c  Vlab::SMT::Script::accept()
;    @     0x7feeb749b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7feeb757d7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7feeb7481b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7feeb65dd830  __libc_start_main
